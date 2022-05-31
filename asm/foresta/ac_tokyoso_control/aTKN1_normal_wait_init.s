lbl_804AAFEC:
/* 804AAFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAFF0  7C 08 02 A6 */	mflr r0
/* 804AAFF4  38 80 00 04 */	li r4, 4
/* 804AAFF8  38 A0 00 00 */	li r5, 0
/* 804AAFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB000  38 C0 00 00 */	li r6, 0
/* 804AB004  38 E0 00 00 */	li r7, 0
/* 804AB008  39 00 00 00 */	li r8, 0
/* 804AB00C  39 20 00 00 */	li r9, 0
/* 804AB010  4B FF FF 49 */	bl func_804AAF58
/* 804AB014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB018  7C 08 03 A6 */	mtlr r0
/* 804AB01C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB020  4E 80 00 20 */	blr 
