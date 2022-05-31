lbl_80516154:
/* 80516154  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80516158  7C 08 02 A6 */	mflr r0
/* 8051615C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80516160  39 61 00 20 */	addi r11, r1, 0x20
/* 80516164  4B B8 4D 71 */	bl func_8009AED4
/* 80516168  7C 7D 1B 78 */	mr r29, r3
/* 8051616C  4B EA 95 3D */	bl func_803BF6A8
/* 80516170  7C 60 1B 78 */	mr r0, r3
/* 80516174  38 60 00 04 */	li r3, 4
/* 80516178  7C 1F 03 78 */	mr r31, r0
/* 8051617C  38 80 00 09 */	li r4, 9
/* 80516180  4B E8 22 FD */	bl mDemo_Get_OrderValue
/* 80516184  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80516188  41 82 00 70 */	beq lbl_805161F8
/* 8051618C  7F E3 FB 78 */	mr r3, r31
/* 80516190  4B EA AB 09 */	bl mMsg_Check_MainNormalContinue
/* 80516194  2C 03 00 00 */	cmpwi r3, 0
/* 80516198  41 82 00 60 */	beq lbl_805161F8
/* 8051619C  3B C0 FF FF */	li r30, -1
/* 805161A0  4B E6 D3 A1 */	bl func_80383540
/* 805161A4  4B E6 D9 C9 */	bl mChoice_Get_ChoseNum
/* 805161A8  2C 03 00 01 */	cmpwi r3, 1
/* 805161AC  41 82 00 1C */	beq lbl_805161C8
/* 805161B0  40 80 00 24 */	bge lbl_805161D4
/* 805161B4  2C 03 00 00 */	cmpwi r3, 0
/* 805161B8  40 80 00 08 */	bge lbl_805161C0
/* 805161BC  48 00 00 18 */	b lbl_805161D4
lbl_805161C0:
/* 805161C0  3B C0 00 04 */	li r30, 4
/* 805161C4  48 00 00 10 */	b lbl_805161D4
lbl_805161C8:
/* 805161C8  7F E3 FB 78 */	mr r3, r31
/* 805161CC  3B C0 00 0C */	li r30, 0xc
/* 805161D0  4B EA AB 41 */	bl mMsg_Set_CancelNormalContinue
lbl_805161D4:
/* 805161D4  2C 1E FF FF */	cmpwi r30, -1
/* 805161D8  41 82 00 20 */	beq lbl_805161F8
/* 805161DC  38 60 00 04 */	li r3, 4
/* 805161E0  38 80 00 09 */	li r4, 9
/* 805161E4  38 A0 00 00 */	li r5, 0
/* 805161E8  4B E8 22 51 */	bl mDemo_Set_OrderValue
/* 805161EC  7F A3 EB 78 */	mr r3, r29
/* 805161F0  7F C4 F3 78 */	mr r4, r30
/* 805161F4  48 00 00 F5 */	bl aMSC_setupAction
lbl_805161F8:
/* 805161F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805161FC  4B B8 4D 25 */	bl func_8009AF20
/* 80516200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80516204  7C 08 03 A6 */	mtlr r0
/* 80516208  38 21 00 20 */	addi r1, r1, 0x20
/* 8051620C  4E 80 00 20 */	blr 
