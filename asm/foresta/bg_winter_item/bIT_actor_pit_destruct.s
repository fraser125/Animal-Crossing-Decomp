lbl_804C4140:
/* 804C4140  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C4144  7C 08 02 A6 */	mflr r0
/* 804C4148  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C414C  39 61 00 30 */	addi r11, r1, 0x30
/* 804C4150  4B BD 6D 85 */	bl func_8009AED4
/* 804C4154  7C 7D 1B 78 */	mr r29, r3
/* 804C4158  3B C0 00 00 */	li r30, 0
/* 804C415C  3B E0 00 00 */	li r31, 0
lbl_804C4160:
/* 804C4160  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 804C4164  2C 00 00 00 */	cmpwi r0, 0
/* 804C4168  41 82 00 30 */	beq lbl_804C4198
/* 804C416C  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C4170  38 81 00 08 */	addi r4, r1, 8
/* 804C4174  80 1D 00 04 */	lwz r0, 4(r29)
/* 804C4178  38 60 00 00 */	li r3, 0
/* 804C417C  38 A0 00 00 */	li r5, 0
/* 804C4180  90 C1 00 08 */	stw r6, 8(r1)
/* 804C4184  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C4188  80 1D 00 08 */	lwz r0, 8(r29)
/* 804C418C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C4190  4B EE 36 A1 */	bl mFI_SetFG_common
/* 804C4194  B3 FD 00 10 */	sth r31, 0x10(r29)
lbl_804C4198:
/* 804C4198  3B DE 00 01 */	addi r30, r30, 1
/* 804C419C  3B BD 00 1C */	addi r29, r29, 0x1c
/* 804C41A0  2C 1E 00 0D */	cmpwi r30, 0xd
/* 804C41A4  41 80 FF BC */	blt lbl_804C4160
/* 804C41A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804C41AC  4B BD 6D 75 */	bl func_8009AF20
/* 804C41B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C41B4  7C 08 03 A6 */	mtlr r0
/* 804C41B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804C41BC  4E 80 00 20 */	blr 
