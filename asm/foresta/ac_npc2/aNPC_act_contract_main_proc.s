lbl_80540BF0:
/* 80540BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540BF4  7C 08 02 A6 */	mflr r0
/* 80540BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540C00  7C 9F 23 78 */	mr r31, r4
/* 80540C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80540C08  7C 7E 1B 78 */	mr r30, r3
/* 80540C0C  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 80540C10  7D 89 03 A6 */	mtctr r12
/* 80540C14  4E 80 04 21 */	bctrl 
/* 80540C18  2C 03 00 01 */	cmpwi r3, 1
/* 80540C1C  40 82 00 18 */	bne lbl_80540C34
/* 80540C20  7F C3 F3 78 */	mr r3, r30
/* 80540C24  4B FF C7 51 */	bl aNPC_setup_talk_end
/* 80540C28  38 00 00 FF */	li r0, 0xff
/* 80540C2C  98 1E 07 F6 */	stb r0, 0x7f6(r30)
/* 80540C30  48 00 00 28 */	b lbl_80540C58
lbl_80540C34:
/* 80540C34  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80540C38  3C 60 80 6A */	lis r3, act_proc_2427@ha /* 0x806A3CD4@ha */
/* 80540C3C  38 A3 3C D4 */	addi r5, r3, act_proc_2427@l /* 0x806A3CD4@l */
/* 80540C40  7F C3 F3 78 */	mr r3, r30
/* 80540C44  54 00 10 3A */	slwi r0, r0, 2
/* 80540C48  7F E4 FB 78 */	mr r4, r31
/* 80540C4C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80540C50  7D 89 03 A6 */	mtctr r12
/* 80540C54  4E 80 04 21 */	bctrl 
lbl_80540C58:
/* 80540C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540C60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80540C64  7C 08 03 A6 */	mtlr r0
/* 80540C68  38 21 00 10 */	addi r1, r1, 0x10
/* 80540C6C  4E 80 00 20 */	blr 
