lbl_80591138:
/* 80591138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059113C  7C 08 02 A6 */	mflr r0
/* 80591140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591144  80 03 09 A0 */	lwz r0, 0x9a0(r3)
/* 80591148  2C 00 00 04 */	cmpwi r0, 4
/* 8059114C  40 82 00 14 */	bne lbl_80591160
/* 80591150  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 80591154  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 80591158  90 03 09 64 */	stw r0, 0x964(r3)
/* 8059115C  48 00 00 10 */	b lbl_8059116C
lbl_80591160:
/* 80591160  3C 80 80 59 */	lis r4, aGH0_norm_talk_request@ha /* 0x80591108@ha */
/* 80591164  38 04 11 08 */	addi r0, r4, aGH0_norm_talk_request@l /* 0x80591108@l */
/* 80591168  90 03 09 64 */	stw r0, 0x964(r3)
lbl_8059116C:
/* 8059116C  4B E0 92 49 */	bl mDemo_Set_ListenAble
/* 80591170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591174  38 60 00 01 */	li r3, 1
/* 80591178  7C 08 03 A6 */	mtlr r0
/* 8059117C  38 21 00 10 */	addi r1, r1, 0x10
/* 80591180  4E 80 00 20 */	blr 