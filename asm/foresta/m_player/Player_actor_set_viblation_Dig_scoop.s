lbl_804D4D48:
/* 804D4D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4D4C  7C 08 02 A6 */	mflr r0
/* 804D4D50  38 60 00 64 */	li r3, 0x64
/* 804D4D54  38 80 00 01 */	li r4, 1
/* 804D4D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4D5C  38 A0 00 07 */	li r5, 7
/* 804D4D60  38 C0 00 01 */	li r6, 1
/* 804D4D64  38 E0 00 00 */	li r7, 0
/* 804D4D68  39 00 00 12 */	li r8, 0x12
/* 804D4D6C  39 20 00 00 */	li r9, 0
/* 804D4D70  4B FF FF B1 */	bl func_804D4D20
/* 804D4D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4D78  7C 08 03 A6 */	mtlr r0
/* 804D4D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4D80  4E 80 00 20 */	blr 