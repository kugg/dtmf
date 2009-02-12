//========DTMGF table========
//     1209 	1336  	1477   1633
//697  1        2       3      A
//770  4        5 	6      B
//852  7        8  	9      C
//941  * 	0 	#      D
//============================
#define PIN_ROW 13
#define PIN_COL 12

#define MAX_BINS 4          
int      freqs_row[ MAX_BINS] = 
{
  697,
  770,
  852,
  941
};
int      freqs_col[MAX_BINS] =
{
  1209,
  1336,
  1477,
  1633 
};

char  row_col_ascii_codes[MAX_BINS][MAX_BINS] = {
  { '1','2','3','A'  },
  { '4','5','6','B'  },
  { '7','8','9','C'  },
  { '*','0','#','D'  }};

int row_col[2];

// type
struct retarr {
  int row_col[2];
};

void setup()
{
  Serial.begin(9600);
 // pinMode(PIN_ROW, OUTPUT);
 // pinMode(PIN_COL, OUTPUT);

  
}

struct retarr keytofreq(char key)
{
  // variable
  struct retarr var_row_col;

  for (int row=0;row<MAX_BINS;row++) {
    for (int col=0;col<MAX_BINS;col++) {
      if (key==row_col_ascii_codes[row][col]) {
        var_row_col.row_col[0] =  freqs_row[row];
        var_row_col.row_col[1] =  freqs_col[col];
        return var_row_col;
      }
    }
  }
}

int freqtoperiod (int freq) {
  
  int period;
  return period;
}

void loop()
{
  analogWrite(PIN_ROW, 20);
 // analogWrite(PIN_COL, 200);

  delay(1000);
 
  struct retarr pfreq1 = keytofreq('1');
  struct retarr pfreq2 = keytofreq('2');
  struct retarr pfreq3 = keytofreq('3');

  Serial.println(pfreq1.row_col[0]);
  Serial.println(pfreq1.row_col[1]);
  
  analogWrite(PIN_ROW, 75);
//  analogWrite(PIN_COL, 57);
  delay(500);
}
