

Sub StudyPostProcessing()

'

' StudyPostProcessing Macro

'

'Rename Worksheet

ActiveSheet.Name = "RunTimeData"



' Add new sheet for processed data

    Sheets.Add After:=Sheets(Sheets.Count)

    Sheets("Sheet1").Select

    Sheets("Sheet1").Name = "ProcessedData"



'Copy Data from Runtime sheet

    'Time - select cell to start time on processed data sheet

    Range("A4").Select

    ActiveCell.FormulaR1C1 = "Time"

    Sheets("RunTimeData").Select

    Range("A3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("A5").Select

    ActiveSheet.Paste

    

    'Inflow O2

    Range("F4").Select

    ActiveCell.FormulaR1C1 = "Reference O2"

    Sheets("RunTimeData").Select

    Range("B3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("F5").Select

    ActiveSheet.Paste

    

    'Outflow O2

    Range("H4").Select

    ActiveCell.FormulaR1C1 = "Sample O2"

    Sheets("RunTimeData").Select

    Range("E3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("H5").Select

    ActiveSheet.Paste

    

    'Inflow CO2

    Range("M4").Select

    ActiveCell.FormulaR1C1 = "Reference CO2"

    Sheets("RunTimeData").Select

    Range("C3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("M5").Select

    ActiveSheet.Paste

    

    'Outflow CO2

    Range("O4").Select

    ActiveCell.FormulaR1C1 = "Sample CO2"

    Sheets("RunTimeData").Select

    Range("F3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("O5").Select

    ActiveSheet.Paste

    

    'Inflow Rate

    Range("U4").Select

    ActiveCell.FormulaR1C1 = "Flow"

    Sheets("RunTimeData").Select

    Range("K3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("U5").Select

    ActiveSheet.Paste

    

    'CO2 flow rate (MFC2)

    Range("V4").Select

    ActiveCell.FormulaR1C1 = "CO2 Flow rate"

    Sheets("RunTimeData").Select

    Range("Q3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("V5").Select

    ActiveSheet.Paste

           

    'N2 flow rate (MFC3)

    Range("W4").Select

    ActiveCell.FormulaR1C1 = "N2 Flow rate"

    Sheets("RunTimeData").Select

    Range("R3").Select

    Range(Selection, Selection.End(xlDown)).Select

    Selection.Copy

    Sheets("ProcessedData").Select

    Range("W5").Select

    ActiveSheet.Paste

    

    

'Create Calculation Rows

    Range("B4").Select

    ActiveCell.FormulaR1C1 = "Calc VO2"

    

    Range("C4").Select

    ActiveCell.FormulaR1C1 = "Calc VCO2"

    

    Range("D4").Select

    ActiveCell.FormulaR1C1 = "Calc MR"

    

    Range("E4").Select

    ActiveCell.FormulaR1C1 = "Calc RQ"



    Range("X4").Select

    ActiveCell.FormulaR1C1 = "Expected VO2"

    

    Range("Y4").Select

    ActiveCell.FormulaR1C1 = "Expected VCO2"

    

    Range("Z4").Select

    ActiveCell.FormulaR1C1 = "Expected MR"

    

    'Null O2

    Range("G4").Select

    ActiveCell.FormulaR1C1 = "Null In O2"

    'Forward IIR O2

    Range("I4").Select

    ActiveCell.FormulaR1C1 = "Forward IIR O2"

    'Backward IIR O2

    Range("J4").Select

    ActiveCell.FormulaR1C1 = "Backward IIR O2"

    'Average IIR O2

    Range("K4").Select

    ActiveCell.FormulaR1C1 = "Average IIR O2"

    'dO2

    Range("L4").Select

    ActiveCell.FormulaR1C1 = "dO2"

    'Null CO2

    Range("N4").Select

    ActiveCell.FormulaR1C1 = "Null In CO2"

    'Forward IIR CO2

    Range("P4").Select

    ActiveCell.FormulaR1C1 = "Forward IIR CO2"

    'Backward IIR CO2

    Range("Q4").Select

    ActiveCell.FormulaR1C1 = "Backward IIR CO2"

    'Average IIR CO2

    Range("R4").Select

    ActiveCell.FormulaR1C1 = "Average IIR CO2"

    'dCO2

    Range("S4").Select

    ActiveCell.FormulaR1C1 = "dCO2"

    'Haldane

    Range("T4").Select

    ActiveCell.FormulaR1C1 = "Haldane"



    

'Create Cells for Constants

    Range("C1").Select

    ActiveCell.FormulaR1C1 = "Volume"

    Range("D1").Select

     With Selection.Interior

        .Pattern = xlSolid

        .PatternColorIndex = xlAutomatic

        .Color = 65535

        .TintAndShade = 0

        .PatternTintAndShade = 0

    End With

    

    Range("F2").Select

    ActiveCell.FormulaR1C1 = "O2 Null"

    Range("G2").Select

     With Selection.Interior

        .Pattern = xlSolid

        .PatternColorIndex = xlAutomatic

        .Color = 65535

        .TintAndShade = 0

        .PatternTintAndShade = 0

    End With

    

    Range("L2").Select

    ActiveCell.FormulaR1C1 = "CO2 Null"

    Range("M2").Select

     With Selection.Interior

        .Pattern = xlSolid

        .PatternColorIndex = xlAutomatic

        .Color = 65535

        .TintAndShade = 0

        .PatternTintAndShade = 0

    End With

    

'Calculations

    'Null Calc

    Range("G5").Select

    ActiveCell.FormulaR1C1 = "=RC[-1]+R2C7"

    

    Range("N5").Select

    ActiveCell.FormulaR1C1 = "=RC[-1]+R2C13"

    

    'IIR Filter

    Range("I2").Select

    ActiveCell.FormulaR1C1 = "IIR Coeff:"

    Range("J2").Select

    With Selection.Interior

        .Pattern = xlSolid

        .PatternColorIndex = xlAutomatic

        .Color = 65535

        .TintAndShade = 0

        .PatternTintAndShade = 0

    End With

    ActiveCell.FormulaR1C1 = "0.2"

    'Backward

    Range("I5").Select

    ActiveCell.FormulaR1C1 = "=RC[-1]"

    Range("I6").Select

    ActiveCell.FormulaR1C1 = "=R2C10*RC[-1]+(1-R2C10)*R[-1]C"

    

    Range("P5").Select

    ActiveCell.FormulaR1C1 = "=RC[-1]"

    Range("P6").Select

    ActiveCell.FormulaR1C1 = "=R2C10*RC[-1]+(1-R2C10)*R[-1]C"



    'Forward

    Range("J5").Select

    ActiveCell.FormulaR1C1 = "=R2C10*RC[-2]+(1-R2C10)*R[1]C"

    

    Range("Q5").Select

    ActiveCell.FormulaR1C1 = "=R2C10*RC[-2]+(1-R2C10)*R[1]C"

    

    'Average IIR

    Range("K5").Select

    ActiveCell.FormulaR1C1 = "=AVERAGE(RC[-2]:RC[-1])"

    

    Range("R5").Select

    ActiveCell.FormulaR1C1 = "=AVERAGE(RC[-2]:RC[-1])"

    

    'Derivative Calculation

    Range("L12").Select

    ActiveCell.FormulaR1C1 = _

        "=(AVERAGE(R[3]C[-1]:R[5]C[-1])-AVERAGE(R[-5]C[-1]:R[-3]C[-1]))/8"

   

   Range("S12").Select

    ActiveCell.FormulaR1C1 = _

        "=(AVERAGE(R[3]C[-1]:R[5]C[-1])-AVERAGE(R[-5]C[-1]:R[-3]C[-1]))/8"

   

    'Haldane

    Range("T5").Select

    ActiveCell.FormulaR1C1 = _

        "=(1-0.01*(RC[-9]+RC[-2]))/(1-0.01*(RC[-14]+RC[-7]))"

    

    'Calc VO2

    Range("B5").Select

    ActiveCell.FormulaR1C1 = "=(RC[19]*(RC[5]*RC[18]-RC[9])-(R1C4*RC[10]))*10"

    'Calc VCO2

    Range("C5").Select

    ActiveCell.FormulaR1C1 = "=(RC[18]*(-RC[11]*RC[17]+RC[15])+(R1C4*RC[16]))*10"

    'Calc MR

    Range("D5").Select

    ActiveCell.FormulaR1C1 = "=3.941*RC[-2]+1.104*RC[-1]"

    'Calc RQ

    Range("E5").Select

    ActiveCell.FormulaR1C1 = "=RC[-2]/RC[-3]"

    'Expected VO2

    Range("X5").Select

    ActiveCell.FormulaR1C1 = "=(RC[-17]*(RC[-2]+RC[-1]))*10"

    'Expected VCO2

    Range("Y5").Select

    ActiveCell.FormulaR1C1 = "=(RC[-3]*1000)"

    'Expected MR

    Range("Z5").Select

    ActiveCell.FormulaR1C1 = "=3.941*RC[-2]+1.104*RC[-1]"

    



End Sub

