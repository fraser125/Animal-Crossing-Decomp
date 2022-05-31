lbl_805E9558:
/* 805E9558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E955C  7C 08 02 A6 */	mflr r0
/* 805E9560  3C 80 80 5F */	lis r4, mMU_music_ovl_move@ha /* 0x805E8DB8@ha */
/* 805E9564  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E9568  38 04 8D B8 */	addi r0, r4, mMU_music_ovl_move@l /* 0x805E8DB8@l */
/* 805E956C  3C 80 80 5F */	lis r4, mMU_music_ovl_draw@ha /* 0x805E94C8@ha */
/* 805E9570  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E9574  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E9578  38 04 94 C8 */	addi r0, r4, mMU_music_ovl_draw@l /* 0x805E94C8@l */
/* 805E957C  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E9580  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805E9584  28 00 00 00 */	cmplwi r0, 0
/* 805E9588  41 82 00 24 */	beq lbl_805E95AC
/* 805E958C  80 05 06 6C */	lwz r0, 0x66c(r5)
/* 805E9590  2C 00 00 04 */	cmpwi r0, 4
/* 805E9594  41 82 00 18 */	beq lbl_805E95AC
/* 805E9598  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E959C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805E95A0  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805E95A4  7D 89 03 A6 */	mtctr r12
/* 805E95A8  4E 80 04 21 */	bctrl 
lbl_805E95AC:
/* 805E95AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E95B0  7C 08 03 A6 */	mtlr r0
/* 805E95B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805E95B8  4E 80 00 20 */	blr 
