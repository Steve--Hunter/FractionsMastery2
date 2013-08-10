// Extract the number given by buttons in a bounding box
// Easier to do after time-up

// Inputs
//        None (use globals to look up bounding box corners and location from answers.csv file)
//Returns:
//          Extracted WND, stuffed into CSV number (string)
// Note:
//      when looking for an instance, the origin (cross-hairs) on a sprite determines 'where' an instance is
//      hence for the buttons on drop zone, the drop-zone origin must be outside the drop-zone
//      or it will be 'found' in the drop zone, based on its origin (and itr has no '.value' like a button)

if global.Debug show_debug_message("--Entering scExtractNumber");



// Setup variable to hold calculations
var FoundButtonN; // hold 3x (0-2) [(x,y) coords (0,1) + value (2)]
var FoundButtonD; // hold 3x (0-2) [(x,y) coords (0,1) + value (2)]
var FoundButtonW; // hold 3x (0-2) [(x,y) coords (0,1) + value (2)]

var i,j,k;
i=0;
j=0;
k=0;

// Initialise array
for (i=0; i<4; i+=1)
    {
    for (j=0; j<5; j+=1)
        {
        FoundButtonN[i,j] = 0; 
        FoundButtonD[i,j] = 0; 
        FoundButtonW[i,j] = 0; 
        }
    }
    
var x1W,y1W,x2W,y2W;
var x1N,y1N,x2N,y2N;
var x1D,y1D,x2D,y2D;
x1W=0; y1W=0; x2W=0; y2W=0;
x1N=0; y1N=0; x2N=0; y2N=0;
x1D=0; y1D=0; x2D=0; y2D=0;

var t1,t2,t3;
t1=0;t2=0; t3=0;
var sorted;
sorted=0;


// Look-up bounding box corners, x1,y1 top left, x2,y2 bottom right, based on index/DropZoneImage being used

// Whole number bounding box



t1=real(global.SubQuestionType[scGetIndex()]);
t2=t1-1;
t3=t2*12;


x1W=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 0];
y1W=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 1];
x2W=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 2];
y2W=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 3];



// Numerator number bounding box
x1N=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 4];
y1N=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 5];
x2N=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 6];
y2N=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 7];


// Denominator number bounding box
x1D=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 8];
y1D=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 9];
x2D=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 10];
y2D=global.BoundingBox[(real(global.SubQuestionType[scGetIndex()])-1)*12 + 11];



// Find all instances within bounding boxes, put into FoundButtons array
// Note - not all may exist e.g. Numerator only questions

// Extract Numerator buttons
if global.Debug==2
    {
    show_debug_message("x1N,y1N,x2N,y2N "+string(x1N)+","+string(y1N)+","+string(x2N)+","+string(y2N));
    show_debug_message("instance_count="+string(instance_count));
    }

i=0; // loop counter
j=0; // button found counter
for( i=0; i<=instance_count-1; i+=1 ) 
    {
//    if global.Debug show_debug_message("instance_id["+string(i)+"].x="+string(instance_id[i].x)+"instance_id["+string(i)+"].y="+string(instance_id[i].y) )
    
        // See if this instance is in the bounding box
        if ( (instance_id[i].x >=x1N) && (instance_id[i].x <=x2N) &&
            (instance_id[i].y >=y1N) && (instance_id[i].y <=y2N) )
                {
                if global.Debug==2 show_debug_message("Button in Numerator drop zone");
                // Record instance x position and value
                FoundButtonN[j,0]=instance_id[i].x;
                FoundButtonN[j,1]=instance_id[i].y;
                FoundButtonN[j,2]=instance_id[i].value;
                j +=1;
                }  
    }
    
// sort the FoundButton array into x-pos order


i=0;
if global.Debug==2
    {
        show_debug_message("Found "+string(j)+" buttons in bounding box");
        show_debug_message("Initial FoundButtonN contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonN["+string(i)+",0]="+string(FoundButtonN[i,0]));
                show_debug_message("FoundButtonN["+string(i)+",1]="+string(FoundButtonN[i,1]));
                show_debug_message("FoundButtonN["+string(i)+",2]="+string(FoundButtonN[i,2]));
            }
        
    }

    
i=0;
k=0;
t1=0; // temporary holding variables whilst swapping
t2=0;
t3=0;
sorted=true; // flag (true/false) to check if swapping needs to continue
// j=how many butttons found in drop zone from last loop
do // loop until in correct order
    {
    if global.Debug==2 // order before sort
            {
                show_debug_message("Before sort loop FoundButtonN contents");
                show_debug_message("sorted="+string(sorted));
                for( k=0; k<j; k+=1 ) 
                {
                    show_debug_message("FoundButtonN["+string(k)+",0]="+string(FoundButtonN[k,0]));
                    show_debug_message("FoundButtonN["+string(k)+",1]="+string(FoundButtonN[k,1]));
                    show_debug_message("FoundButtonN["+string(k)+",2]="+string(FoundButtonN[k,2]));
                }
        
            }
    for( i=0; i<(j-1); i+=1 ) 
      {
      sorted=1; // start assuming in order
      if (FoundButtonN[i,0]>FoundButtonN[(i+1),0]) // swap if x bigger
           {
           t1=FoundButtonN[i,0];
           t2=FoundButtonN[i,1];
           t3=FoundButtonN[i,2];
           FoundButtonN[i,0]=FoundButtonN[(i+1),0];
           FoundButtonN[i,1]=FoundButtonN[(i+1),1];
           FoundButtonN[i,2]=FoundButtonN[(i+1),2];
           FoundButtonN[(i+1),0]=t1;
           FoundButtonN[(i+1),1]=t2;
           FoundButtonN[(i+1),2]=t3;
           sorted=0; // had to re-sort, so try again
           }
       
      }
      if global.Debug==2 // after sort
            {
                show_debug_message("After sort loop FoundButtonN contents");
                show_debug_message("sorted="+string(sorted));
                for( k=0; k<j; k+=1 ) 
                {
                    show_debug_message("FoundButtonN["+string(k)+",0]="+string(FoundButtonN[k,0]));
                    show_debug_message("FoundButtonN["+string(k)+",1]="+string(FoundButtonN[k,1]));
                    show_debug_message("FoundButtonN["+string(k)+",2]="+string(FoundButtonN[k,2]));
                }
        
            }
    }
until sorted=1;

i=0;
var k,l;
k=0; l=0;
if global.Debug==2
    {
        show_debug_message("Unshifted FoundButton contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonN["+string(i)+",0]="+string(FoundButtonN[i,0]));
                show_debug_message("FoundButtonN["+string(i)+",1]="+string(FoundButtonN[i,1]));
                show_debug_message("FoundButtonN["+string(i)+",2]="+string(FoundButtonN[i,2]));
            }
        
    }

// Need to shift found buttons right in FoundButton array, as they are
// at this point left shifted
// Right shift 3-j places
if (j==1 || j==2) // i.e. a button found or have 1,2 digits (no need to right shift if no buttons, or have 3)
    {
    for( i=0; i<3-j; i+=1 ) 
        {
        if global.Debug==2
            {
            show_debug_message("line 209 scExtractNumber");
            show_debug_message("i="+string(i));
            show_debug_message("j="+string(j));
            show_debug_message("FoundButtonN[i,2]="+string(FoundButtonN[i,2]));
            show_debug_message("FoundButtonN[(i+1),2]="+string(FoundButtonN[(i+1),2]));
        

           }
           // shift register - move all digits right one position
           for( k=2; k>0; k-=1 )
            {
             if global.Debug==2 show_debug_message("Before shift register= "+string(FoundButtonN[0,2])+string(FoundButtonN[1,2])+string(FoundButtonN[2,2]));
  
            t1=FoundButtonN[k,0];
            t2=FoundButtonN[k,1];
            t3=FoundButtonN[k,2];
            
            FoundButtonN[k,0]=FoundButtonN[(k-1),0];
            FoundButtonN[k,1]=FoundButtonN[(k-1),1];
            FoundButtonN[k,2]=FoundButtonN[(k-1),2];
            FoundButtonN[(k-1),0]=t1;
            FoundButtonN[(k-1),1]=t2;
            FoundButtonN[(k-1),2]=t3;
            if global.Debug==2 show_debug_message("After shift register= "+string(FoundButtonN[0,2])+string(FoundButtonN[1,2])+string(FoundButtonN[2,2]));
            }
     } 
   }  
    
if global.Debug==2
    {
        show_debug_message("Shifted FoundButton contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonN["+string(i)+",0]="+string(FoundButtonN[i,0]));
                show_debug_message("FoundButtonN["+string(i)+",1]="+string(FoundButtonN[i,1]));
                show_debug_message("FoundButtonN["+string(i)+",2]="+string(FoundButtonN[i,2]));
            }
        
    } 
      
// Got all the buttons in order, put into the Numerator
if global.Debug show_debug_message("Returning after extract= "+string(FoundButtonN[0,2])+string(FoundButtonN[1,2])+string(FoundButtonN[2,2]));



// Extract Denominator buttons
if global.Debug==2
    {
    show_debug_message("x1D,y1D,x2D,y2D "+string(x1D)+","+string(y1D)+","+string(x2D)+","+string(y2D));
    show_debug_message("instance_count="+string(instance_count));
    }

i=0; // loop counter
j=0; // button found counter
for( i=0; i<=instance_count-1; i+=1 ) 
    {
//    if global.Debug==2 show_debug_message("instance_id["+string(i)+"].x="+string(instance_id[i].x)+"instance_id["+string(i)+"].y="+string(instance_id[i].y) )
    
        // See if this instance is in the bounding box
        if ( (instance_id[i].x >=x1D) && (instance_id[i].x <=x2D) &&
            (instance_id[i].y >=y1D) && (instance_id[i].y <=y2D) )
                {
                if global.Debug==2 show_debug_message("Button in Denominator drop zone");
                // Record instance x position and value
                FoundButtonD[j,0]=instance_id[i].x;
                FoundButtonD[j,1]=instance_id[i].y;
                FoundButtonD[j,2]=instance_id[i].value;
                j+=1;
                }  
    }
    
// sort the FoundButton array into x-pos order


i=0;
if global.Debug==2
    {
        show_debug_message("Found "+string(j)+" buttons in bounding box");
        show_debug_message("Initial FoundButtonD contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonD["+string(i)+",0]="+string(FoundButtonD[i,0]));
                show_debug_message("FoundButtonD["+string(i)+",1]="+string(FoundButtonD[i,1]));
                show_debug_message("FoundButtonD["+string(i)+",2]="+string(FoundButtonD[i,2]));
            }
        
    }

    
i=0;
k=0;
t1=0; // temporary holding variables whilst swapping
t2=0;
t3=0;
sorted=true; // flag (true/false) to check if swapping needs to continue
// j=how many butttons found in drop zone from last loop
do // loop until in correct order
    {
    if global.Debug==2 // order before sort
            {
                show_debug_message("Before sort loop FoundButtonD contents");
                show_debug_message("sorted="+string(sorted));
                for( k=0; k<j; k+=1 ) 
                {
                    show_debug_message("FoundButtonD["+string(k)+",0]="+string(FoundButtonD[k,0]));
                    show_debug_message("FoundButtonD["+string(k)+",1]="+string(FoundButtonD[k,1]));
                    show_debug_message("FoundButtonD["+string(k)+",2]="+string(FoundButtonD[k,2]));
                }
        
            }
    for( i=0; i<(j-1); i+=1 ) 
      {
      sorted=1; // start assuming in order
      if (FoundButtonD[i,0]>FoundButtonD[(i+1),0]) // swap if x bigger
           {
           t1=FoundButtonD[i,0];
           t2=FoundButtonD[i,1];
           t3=FoundButtonD[i,2];
           FoundButtonD[i,0]=FoundButtonD[(i+1),0];
           FoundButtonD[i,1]=FoundButtonD[(i+1),1];
           FoundButtonD[i,2]=FoundButtonD[(i+1),2];
           FoundButtonD[(i+1),0]=t1;
           FoundButtonD[(i+1),1]=t2;
           FoundButtonD[(i+1),2]=t3;
           sorted=0; // had to re-sort, so try again
           }
         
      }
      if global.Debug==2 // after sort
            {
                show_debug_message("After sort loop FoundButtonD contents");
                show_debug_message("sorted="+string(sorted));
                for( k=0; k<j; k+=1 ) 
                {
                    show_debug_message("FoundButtonD["+string(k)+",0]="+string(FoundButtonD[k,0]));
                    show_debug_message("FoundButtonD["+string(k)+",1]="+string(FoundButtonD[k,1]));
                    show_debug_message("FoundButtonD["+string(k)+",2]="+string(FoundButtonD[k,2]));
                }
        
            }
    }
until sorted=1;

i=0;
if global.Debug==2
    {
        show_debug_message("Unshifted FoundButton contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonD["+string(i)+",0]="+string(FoundButtonD[i,0]));
                show_debug_message("FoundButtonD["+string(i)+",1]="+string(FoundButtonD[i,1]));
                show_debug_message("FoundButtonD["+string(i)+",2]="+string(FoundButtonD[i,2]));
            }
        
    }

// Need to shift found buttons right in FoundButton array, as they are
// at this point left shifted
// Right shift 3-j places
if (j==1 || j==2) // i.e. a button found or have 1,2 digits (no need to right shift if no buttons, or have 3)
    {
    for( i=0; i<3-j; i+=1 ) 
        {
        if global.Debug==2
            {
            show_debug_message("line 374 scExtractNumber");
            show_debug_message("i="+string(i));
            show_debug_message("j="+string(j));
            show_debug_message("FoundButtonD[i,2]="+string(FoundButtonD[i,2]));
            show_debug_message("FoundButtonD[(i+1),2]="+string(FoundButtonD[(i+1),2]));
        

           }
           // shift register - move all digits right one position
           for( k=2; k>0; k-=1 )
            {
             if global.Debug==2 show_debug_message("Before shift register= "+string(FoundButtonD[0,2])+string(FoundButtonD[1,2])+string(FoundButtonD[2,2]));
  
            t1=FoundButtonD[k,0];
            t2=FoundButtonD[k,1];
            t3=FoundButtonD[k,2];
            
            FoundButtonD[k,0]=FoundButtonD[(k-1),0];
            FoundButtonD[k,1]=FoundButtonD[(k-1),1];
            FoundButtonD[k,2]=FoundButtonD[(k-1),2];
            FoundButtonD[(k-1),0]=t1;
            FoundButtonD[(k-1),1]=t2;
            FoundButtonD[(k-1),2]=t3;
            if global.Debug==2 show_debug_message("After shift register= "+string(FoundButtonD[0,2])+string(FoundButtonD[1,2])+string(FoundButtonD[2,2]));
            }
     } 
 }
      
// Got all the buttons in order, put into the Denominator
if global.Debug==2 show_debug_message("Returning after extract= "+string(FoundButtonD[0,2])+string(FoundButtonD[1,2])+string(FoundButtonD[2,2]));



// Extract Whole Number buttons
if global.Debug==2
    {
    show_debug_message("x1W,y1W,x2W,y2W "+string(x1W)+","+string(y1W)+","+string(x2W)+","+string(y2W));
    show_debug_message("instance_count="+string(instance_count));
    }

i=0; // loop counter
j=0; // button found counter
for( i=0; i<=instance_count-1; i+=1 ) 
    {
//    if global.Debug==2 show_debug_message("instance_id["+string(i)+"].x="+string(instance_id[i].x)+"instance_id["+string(i)+"].y="+string(instance_id[i].y) )
    
        // See if this instance is in the bounding box
        if ( (instance_id[i].x >=x1W) && (instance_id[i].x <=x2W) &&
            (instance_id[i].y >=y1W) && (instance_id[i].y <=y2W) )
                {
                if global.Debug==2 show_debug_message("Button in Whole Number drop zone");
                // Record instance x position and value
                FoundButtonW[j,0]=instance_id[i].x;
                FoundButtonW[j,1]=instance_id[i].y;
                FoundButtonW[j,2]=instance_id[i].value;
                j +=1;
                }  
    }
    
// sort the FoundButton array into x-pos order


i=0;
if global.Debug==2
    {
        show_debug_message("Found "+string(j)+" buttons in bounding box");
        show_debug_message("Initial FoundButtonW contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonW["+string(i)+",0]="+string(FoundButtonW[i,0]));
                show_debug_message("FoundButtonW["+string(i)+",1]="+string(FoundButtonW[i,1]));
                show_debug_message("FoundButtonW["+string(i)+",2]="+string(FoundButtonW[i,2]));
            }
        
    }

    
i=0;
k=0;
t1=0; // temporary holding variables whilst swapping
t2=0;
t3=0;
sorted=true; // flag (true/false) to check if swapping needs to continue
// j=how many butttons found in drop zone from last loop
do // loop until in correct order
    {
    if global.Debug==2 // order before sort
            {
                show_debug_message("Before sort loop FoundButtonW contents");
                show_debug_message("sorted="+string(sorted));
                for( k=0; k<j; k+=1 ) 
                {
                    show_debug_message("FoundButtonW["+string(k)+",0]="+string(FoundButtonW[k,0]));
                    show_debug_message("FoundButtonW["+string(k)+",1]="+string(FoundButtonW[k,1]));
                    show_debug_message("FoundButtonW["+string(k)+",2]="+string(FoundButtonW[k,2]));
                }
     
            }
    for( i=0; i<(j-1); i+=1 ) 
      {
      sorted=1; // start assuming in order
      if (FoundButtonW[i,0]>FoundButtonW[(i+1),0]) // swap if x bigger
           {
           t1=FoundButtonW[i,0];
           t2=FoundButtonW[i,1];
           t3=FoundButtonW[i,2];
           FoundButtonW[i,0]=FoundButtonW[(i+1),0];
           FoundButtonW[i,1]=FoundButtonW[(i+1),1];
           FoundButtonW[i,2]=FoundButtonW[(i+1),2];
           FoundButtonW[(i+1),0]=t1;
           FoundButtonW[(i+1),1]=t2;
           FoundButtonW[(i+1),2]=t3;
           sorted=0; // had to re-sort, so try again
           }
           
      }
      if global.Debug==2 // after sort
            {
                show_debug_message("After sort loop FoundButtonW contents");
                show_debug_message("sorted="+string(sorted));
                for( k=0; k<j; k+=1 ) 
                {
                    show_debug_message("FoundButtonW["+string(k)+",0]="+string(FoundButtonW[k,0]));
                    show_debug_message("FoundButtonW["+string(k)+",1]="+string(FoundButtonW[k,1]));
                    show_debug_message("FoundButtonW["+string(k)+",2]="+string(FoundButtonW[k,2]));
                }
        
            }
    }
until sorted=1;

i=0;
if global.Debug==2
    {
        show_debug_message("Unshifted FoundButton contents");
        for( i=0; i<j; i+=1 ) 
            {
                show_debug_message("FoundButtonW["+string(i)+",0]="+string(FoundButtonW[i,0]));
                show_debug_message("FoundButtonW["+string(i)+",1]="+string(FoundButtonW[i,1]));
                show_debug_message("FoundButtonW["+string(i)+",2]="+string(FoundButtonW[i,2]));
            }
        
    }

// Need to shift found buttons right in FoundButton array, as they are
// at this point left shifted
// Right shift 3-j places
if (j==1 || j==2) // i.e. a button found or have 1,2 digits (no need to right shift if no buttons, or have 3)
    {
    for( i=0; i<3-j; i+=1 ) 
        {
        if global.Debug==2
            {
            show_debug_message("line 374 scExtractNumber");
            show_debug_message("i="+string(i));
            show_debug_message("j="+string(j));
            show_debug_message("FoundButtonW[i,2]="+string(FoundButtonW[i,2]));
            show_debug_message("FoundButtonW[(i+1),2]="+string(FoundButtonW[(i+1),2]));
            }
           // shift register - move all digits right one position
           for( k=2; k>0; k-=1 )
            {
             if global.Debug==2 show_debug_message("Before shift register= "+string(FoundButtonW[0,2])+string(FoundButtonW[1,2])+string(FoundButtonW[2,2]));
  
            t1=FoundButtonW[k,0];
            t2=FoundButtonW[k,1];
            t3=FoundButtonW[k,2];
            
            FoundButtonW[k,0]=FoundButtonW[(k-1),0];
            FoundButtonW[k,1]=FoundButtonW[(k-1),1];
            FoundButtonW[k,2]=FoundButtonW[(k-1),2];
            FoundButtonW[(k-1),0]=t1;
            FoundButtonW[(k-1),1]=t2;
            FoundButtonW[(k-1),2]=t3;
            if global.Debug==2 show_debug_message("After shift register= "+string(FoundButtonW[0,2])+string(FoundButtonW[1,2])+string(FoundButtonW[2,2]));
            }
        } 
  }
 
// Got all the buttons in order, put into the Whole Number
if global.Debug==2 show_debug_message("Returning after extract= "+string(FoundButtonW[0,2])+string(FoundButtonW[1,2])+string(FoundButtonW[2,2]));

// Put all instances back where they started from
if global.Debug==2 show_debug_message("Putting all instances back to their starting positions");
for( i=0; i<=instance_count-1; i+=1 ) 
    {
    instance_id[i].x=instance_id[i].xstart;
    instance_id[i].y=instance_id[i].ystart;
    }


    
// Return W,N,D, but can only be single value, so stuff into a CSV  

if global.Debug show_debug_message("-- scExtractNumber returning:"+string(FoundButtonW[0,2])+string(FoundButtonW[1,2])+string(FoundButtonW[2,2])+","+
    string(FoundButtonN[0,2])+string(FoundButtonN[1,2])+string(FoundButtonN[2,2])+","+
    string(FoundButtonW[0,2])+string(FoundButtonW[1,2])+string(FoundButtonD[2,2]) );
    
return
    (
    string(FoundButtonW[0,2])+string(FoundButtonW[1,2])+string(FoundButtonW[2,2])+","+
    string(FoundButtonN[0,2])+string(FoundButtonN[1,2])+string(FoundButtonN[2,2])+","+
    string(FoundButtonD[0,2])+string(FoundButtonD[1,2])+string(FoundButtonD[2,2])
    );





