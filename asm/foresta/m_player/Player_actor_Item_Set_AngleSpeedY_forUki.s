lbl_804E1020:
/* 804E1020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1024  80 83 0F 30 */	lwz r4, 0xf30(r3)
/* 804E1028  28 04 00 00 */	cmplwi r4, 0
/* 804E102C  41 82 00 48 */	beq lbl_804E1074
/* 804E1030  C0 03 0E 00 */	lfs f0, 0xe00(r3)
/* 804E1034  FC 00 00 1E */	fctiwz f0, f0
/* 804E1038  D8 01 00 08 */	stfd f0, 8(r1)
/* 804E103C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804E1040  2C 05 00 00 */	cmpwi r5, 0
/* 804E1044  40 81 00 20 */	ble lbl_804E1064
/* 804E1048  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804E104C  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 804E1050  7C 05 00 00 */	cmpw r5, r0
/* 804E1054  40 81 00 1C */	ble lbl_804E1070
/* 804E1058  7C 05 18 50 */	subf r0, r5, r3
/* 804E105C  7C A0 00 D0 */	neg r5, r0
/* 804E1060  48 00 00 10 */	b lbl_804E1070
lbl_804E1064:
/* 804E1064  2C 05 80 00 */	cmpwi r5, -32768
/* 804E1068  40 80 00 08 */	bge lbl_804E1070
/* 804E106C  3C A5 00 01 */	addis r5, r5, 1
lbl_804E1070:
/* 804E1070  90 A4 02 30 */	stw r5, 0x230(r4)
lbl_804E1074:
/* 804E1074  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1078  4E 80 00 20 */	blr 
