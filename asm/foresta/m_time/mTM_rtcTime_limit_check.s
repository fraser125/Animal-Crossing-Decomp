lbl_803F3D14:
/* 803F3D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F3D18  7C 08 02 A6 */	mflr r0
/* 803F3D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F3D20  38 61 00 08 */	addi r3, r1, 8
/* 803F3D24  48 01 29 F9 */	bl lbRTC_GetTime
/* 803F3D28  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 803F3D2C  28 00 07 EE */	cmplwi r0, 0x7ee
/* 803F3D30  40 81 00 18 */	ble lbl_803F3D48
/* 803F3D34  38 00 07 EE */	li r0, 0x7ee
/* 803F3D38  38 61 00 08 */	addi r3, r1, 8
/* 803F3D3C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 803F3D40  48 01 29 3D */	bl lbRTC_SetTime
/* 803F3D44  48 00 00 1C */	b lbl_803F3D60
lbl_803F3D48:
/* 803F3D48  28 00 07 D1 */	cmplwi r0, 0x7d1
/* 803F3D4C  40 80 00 14 */	bge lbl_803F3D60
/* 803F3D50  38 00 07 D1 */	li r0, 0x7d1
/* 803F3D54  38 61 00 08 */	addi r3, r1, 8
/* 803F3D58  B0 01 00 0E */	sth r0, 0xe(r1)
/* 803F3D5C  48 01 29 21 */	bl lbRTC_SetTime
lbl_803F3D60:
/* 803F3D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F3D64  7C 08 03 A6 */	mtlr r0
/* 803F3D68  38 21 00 10 */	addi r1, r1, 0x10
/* 803F3D6C  4E 80 00 20 */	blr 
