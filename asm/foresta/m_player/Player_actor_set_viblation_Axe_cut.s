lbl_804D4F2C:
/* 804D4F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4F30  7C 08 02 A6 */	mflr r0
/* 804D4F34  38 60 00 64 */	li r3, 0x64
/* 804D4F38  38 80 00 01 */	li r4, 1
/* 804D4F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4F40  38 A0 00 0A */	li r5, 0xa
/* 804D4F44  38 C0 00 01 */	li r6, 1
/* 804D4F48  38 E0 00 03 */	li r7, 3
/* 804D4F4C  39 00 00 24 */	li r8, 0x24
/* 804D4F50  39 20 00 00 */	li r9, 0
/* 804D4F54  4B FF FD CD */	bl func_804D4D20
/* 804D4F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4F5C  7C 08 03 A6 */	mtlr r0
/* 804D4F60  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4F64  4E 80 00 20 */	blr 
