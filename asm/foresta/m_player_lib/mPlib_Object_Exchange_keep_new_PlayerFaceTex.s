lbl_803D92A0:
/* 803D92A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D92A4  7C 08 02 A6 */	mflr r0
/* 803D92A8  38 80 00 34 */	li r4, 0x34
/* 803D92AC  38 A0 00 00 */	li r5, 0
/* 803D92B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D92B4  38 C0 0E 00 */	li r6, 0xe00
/* 803D92B8  38 E0 00 01 */	li r7, 1
/* 803D92BC  4B FF FC 59 */	bl mPlib_Object_Exchange_keep_new
/* 803D92C0  3C 80 80 66 */	lis r4, Player_face_tex_bank_ID@ha /* 0x8065BC14@ha */
/* 803D92C4  90 64 BC 14 */	stw r3, Player_face_tex_bank_ID@l(r4)  /* 0x8065BC14@l */
/* 803D92C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D92CC  7C 08 03 A6 */	mtlr r0
/* 803D92D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803D92D4  4E 80 00 20 */	blr 
