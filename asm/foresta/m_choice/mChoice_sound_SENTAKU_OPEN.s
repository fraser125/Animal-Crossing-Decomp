lbl_8038451C:
/* 8038451C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384520  7C 08 02 A6 */	mflr r0
/* 80384524  38 60 00 0C */	li r3, 0xc
/* 80384528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038452C  48 2A 97 D9 */	bl sAdo_SysTrgStart
/* 80384530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384534  7C 08 03 A6 */	mtlr r0
/* 80384538  38 21 00 10 */	addi r1, r1, 0x10
/* 8038453C  4E 80 00 20 */	blr 