lbl_8055EB14:
/* 8055EB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EB18  7C 08 02 A6 */	mflr r0
/* 8055EB1C  38 A0 00 20 */	li r5, 0x20
/* 8055EB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055EB28  7C 9F 23 78 */	mr r31, r4
/* 8055EB2C  38 80 00 10 */	li r4, 0x10
/* 8055EB30  93 C1 00 08 */	stw r30, 8(r1)
/* 8055EB34  7C 7E 1B 78 */	mr r30, r3
/* 8055EB38  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 8055EB3C  4B E5 BF 0D */	bl mem_clear
/* 8055EB40  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8055EB44  38 FE 09 C8 */	addi r7, r30, 0x9c8
/* 8055EB48  38 80 00 1D */	li r4, 0x1d
/* 8055EB4C  38 A0 00 00 */	li r5, 0
/* 8055EB50  38 C0 00 00 */	li r6, 0
/* 8055EB54  4B E9 0B B1 */	bl mSM_open_submenu_new
/* 8055EB58  38 00 00 2C */	li r0, 0x2c
/* 8055EB5C  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8055EB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055EB68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055EB6C  7C 08 03 A6 */	mtlr r0
/* 8055EB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EB74  4E 80 00 20 */	blr 
