lbl_8061C780:
/* 8061C780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061C784  7C 08 02 A6 */	mflr r0
/* 8061C788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061C78C  38 00 00 64 */	li r0, 0x64
/* 8061C790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061C794  7C 7F 1B 78 */	mr r31, r3
/* 8061C798  B0 03 00 00 */	sth r0, 0(r3)
/* 8061C79C  38 00 00 00 */	li r0, 0
/* 8061C7A0  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8061C7A4  4B FF FE DD */	bl eShootingSet_GetFrame_MakeNextShooting
/* 8061C7A8  B0 7F 00 4E */	sth r3, 0x4e(r31)
/* 8061C7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061C7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061C7B4  7C 08 03 A6 */	mtlr r0
/* 8061C7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8061C7BC  4E 80 00 20 */	blr 
