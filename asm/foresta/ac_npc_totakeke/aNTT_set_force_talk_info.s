lbl_80586BC4:
/* 80586BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80586BC8  7C 08 02 A6 */	mflr r0
/* 80586BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80586BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80586BD4  7C 7F 1B 78 */	mr r31, r3
/* 80586BD8  3C 60 80 6C */	lis r3, msg_633@ha /* 0x806C1C2C@ha */
/* 80586BDC  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80586BE0  38 63 1C 2C */	addi r3, r3, msg_633@l /* 0x806C1C2C@l */
/* 80586BE4  7C 63 00 AE */	lbzx r3, r3, r0
/* 80586BE8  38 63 1B 93 */	addi r3, r3, 0x1b93
/* 80586BEC  4B E1 19 29 */	bl mDemo_Set_msg_num
/* 80586BF0  38 60 00 01 */	li r3, 1
/* 80586BF4  4B E1 1C 55 */	bl mDemo_Set_talk_turn
/* 80586BF8  38 60 00 01 */	li r3, 1
/* 80586BFC  4B E1 1D 25 */	bl mDemo_Set_camera
/* 80586C00  88 1F 09 A3 */	lbz r0, 0x9a3(r31)
/* 80586C04  28 00 00 00 */	cmplwi r0, 0
/* 80586C08  40 82 00 14 */	bne lbl_80586C1C
/* 80586C0C  3C 60 80 58 */	lis r3, aNTT_talk_give@ha /* 0x80586AE0@ha */
/* 80586C10  38 03 6A E0 */	addi r0, r3, aNTT_talk_give@l /* 0x80586AE0@l */
/* 80586C14  90 1F 09 94 */	stw r0, 0x994(r31)
/* 80586C18  48 00 00 10 */	b lbl_80586C28
lbl_80586C1C:
/* 80586C1C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80586C20  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80586C24  90 1F 09 94 */	stw r0, 0x994(r31)
lbl_80586C28:
/* 80586C28  A8 7F 09 78 */	lha r3, 0x978(r31)
/* 80586C2C  7C 60 07 35 */	extsh. r0, r3
/* 80586C30  41 82 00 08 */	beq lbl_80586C38
/* 80586C34  98 7F 09 A7 */	stb r3, 0x9a7(r31)
lbl_80586C38:
/* 80586C38  38 00 00 00 */	li r0, 0
/* 80586C3C  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 80586C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80586C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80586C48  7C 08 03 A6 */	mtlr r0
/* 80586C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80586C50  4E 80 00 20 */	blr 
