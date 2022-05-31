lbl_80516E38:
/* 80516E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516E3C  7C 08 02 A6 */	mflr r0
/* 80516E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80516E48  3B E0 00 00 */	li r31, 0
/* 80516E4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80516E50  7C 7E 1B 78 */	mr r30, r3
/* 80516E54  4B E8 35 A9 */	bl mDemo_Check_SpeakerAble
/* 80516E58  2C 03 00 01 */	cmpwi r3, 1
/* 80516E5C  40 82 00 58 */	bne lbl_80516EB4
/* 80516E60  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80516E64  2C 00 00 04 */	cmpwi r0, 4
/* 80516E68  40 82 00 38 */	bne lbl_80516EA0
/* 80516E6C  3C 60 80 51 */	lis r3, aCD0_force_talk_request@ha /* 0x80516D3C@ha */
/* 80516E70  80 9E 09 64 */	lwz r4, 0x964(r30)
/* 80516E74  38 03 6D 3C */	addi r0, r3, aCD0_force_talk_request@l /* 0x80516D3C@l */
/* 80516E78  7C 04 00 40 */	cmplw r4, r0
/* 80516E7C  40 82 00 14 */	bne lbl_80516E90
/* 80516E80  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80516E84  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80516E88  90 1E 09 64 */	stw r0, 0x964(r30)
/* 80516E8C  48 00 00 20 */	b lbl_80516EAC
lbl_80516E90:
/* 80516E90  3C 60 80 51 */	lis r3, aCD0_norm_talk_request@ha /* 0x80516E08@ha */
/* 80516E94  38 03 6E 08 */	addi r0, r3, aCD0_norm_talk_request@l /* 0x80516E08@l */
/* 80516E98  90 1E 09 64 */	stw r0, 0x964(r30)
/* 80516E9C  48 00 00 10 */	b lbl_80516EAC
lbl_80516EA0:
/* 80516EA0  3C 60 80 51 */	lis r3, aCD0_norm_talk_request@ha /* 0x80516E08@ha */
/* 80516EA4  38 03 6E 08 */	addi r0, r3, aCD0_norm_talk_request@l /* 0x80516E08@l */
/* 80516EA8  90 1E 09 64 */	stw r0, 0x964(r30)
lbl_80516EAC:
/* 80516EAC  4B E8 35 09 */	bl mDemo_Set_ListenAble
/* 80516EB0  3B E0 00 01 */	li r31, 1
lbl_80516EB4:
/* 80516EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516EB8  7F E3 FB 78 */	mr r3, r31
/* 80516EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80516EC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80516EC4  7C 08 03 A6 */	mtlr r0
/* 80516EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80516ECC  4E 80 00 20 */	blr 
