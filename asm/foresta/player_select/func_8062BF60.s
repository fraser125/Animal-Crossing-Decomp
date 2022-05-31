lbl_8062BF60:
/* 8062BF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062BF64  7C 08 02 A6 */	mflr r0
/* 8062BF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062BF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062BF70  93 C1 00 08 */	stw r30, 8(r1)
/* 8062BF74  7C 7E 1B 78 */	mr r30, r3
/* 8062BF78  83 E3 02 14 */	lwz r31, 0x214(r3)
/* 8062BF7C  4B D7 8D 05 */	bl func_803A4C80
/* 8062BF80  7F C3 F3 78 */	mr r3, r30
/* 8062BF84  7F E4 FB 78 */	mr r4, r31
/* 8062BF88  38 A0 00 00 */	li r5, 0
/* 8062BF8C  38 C0 00 00 */	li r6, 0
/* 8062BF90  4B DC 2B D5 */	bl mSDI_StartInitBefore
/* 8062BF94  2C 03 00 01 */	cmpwi r3, 1
/* 8062BF98  40 82 00 0C */	bne lbl_8062BFA4
/* 8062BF9C  38 00 00 01 */	li r0, 1
/* 8062BFA0  90 1E 02 18 */	stw r0, 0x218(r30)
lbl_8062BFA4:
/* 8062BFA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062BFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062BFAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062BFB0  7C 08 03 A6 */	mtlr r0
/* 8062BFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062BFB8  4E 80 00 20 */	blr 
