lbl_804D4EB0:
/* 804D4EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4EB4  7C 08 02 A6 */	mflr r0
/* 804D4EB8  38 60 00 64 */	li r3, 0x64
/* 804D4EBC  38 80 00 00 */	li r4, 0
/* 804D4EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4EC4  38 A0 00 0B */	li r5, 0xb
/* 804D4EC8  38 C0 00 05 */	li r6, 5
/* 804D4ECC  38 E0 00 00 */	li r7, 0
/* 804D4ED0  39 00 00 22 */	li r8, 0x22
/* 804D4ED4  39 20 00 00 */	li r9, 0
/* 804D4ED8  4B FF FE 49 */	bl func_804D4D20
/* 804D4EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4EE0  7C 08 03 A6 */	mtlr r0
/* 804D4EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4EE8  4E 80 00 20 */	blr 
