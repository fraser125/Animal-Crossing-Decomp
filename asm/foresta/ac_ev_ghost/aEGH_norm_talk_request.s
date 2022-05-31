lbl_8052007C:
/* 8052007C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80520080  7C 08 02 A6 */	mflr r0
/* 80520084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80520088  88 03 09 A7 */	lbz r0, 0x9a7(r3)
/* 8052008C  28 00 00 00 */	cmplwi r0, 0
/* 80520090  40 82 00 1C */	bne lbl_805200AC
/* 80520094  3C A0 80 52 */	lis r5, aEGH_set_norm_talk_info@ha /* 0x8051FFC8@ha */
/* 80520098  7C 64 1B 78 */	mr r4, r3
/* 8052009C  38 A5 FF C8 */	addi r5, r5, aEGH_set_norm_talk_info@l /* 0x8051FFC8@l */
/* 805200A0  38 60 00 07 */	li r3, 7
/* 805200A4  4B E7 A0 B9 */	bl mDemo_Request
/* 805200A8  48 00 00 0C */	b lbl_805200B4
lbl_805200AC:
/* 805200AC  38 00 00 00 */	li r0, 0
/* 805200B0  98 03 09 A7 */	stb r0, 0x9a7(r3)
lbl_805200B4:
/* 805200B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805200B8  7C 08 03 A6 */	mtlr r0
/* 805200BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805200C0  4E 80 00 20 */	blr 
