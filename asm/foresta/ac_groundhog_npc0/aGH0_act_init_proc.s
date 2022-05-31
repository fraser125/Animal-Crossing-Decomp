lbl_80590BD8:
/* 80590BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590BDC  7C 08 02 A6 */	mflr r0
/* 80590BE0  38 80 00 01 */	li r4, 1
/* 80590BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80590BEC  7C 7F 1B 78 */	mr r31, r3
/* 80590BF0  4B FF FF 9D */	bl aGH0_setupAction
/* 80590BF4  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80590BF8  2C 00 00 05 */	cmpwi r0, 5
/* 80590BFC  41 82 00 14 */	beq lbl_80590C10
/* 80590C00  40 80 00 30 */	bge lbl_80590C30
/* 80590C04  2C 00 00 04 */	cmpwi r0, 4
/* 80590C08  40 80 00 18 */	bge lbl_80590C20
/* 80590C0C  48 00 00 24 */	b lbl_80590C30
lbl_80590C10:
/* 80590C10  3C 60 80 59 */	lis r3, aGH0_norm_talk_request@ha /* 0x80591108@ha */
/* 80590C14  38 03 11 08 */	addi r0, r3, aGH0_norm_talk_request@l /* 0x80591108@l */
/* 80590C18  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80590C1C  48 00 00 20 */	b lbl_80590C3C
lbl_80590C20:
/* 80590C20  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80590C24  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80590C28  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80590C2C  48 00 00 10 */	b lbl_80590C3C
lbl_80590C30:
/* 80590C30  3C 60 80 59 */	lis r3, aGH0_norm_talk_request@ha /* 0x80591108@ha */
/* 80590C34  38 03 11 08 */	addi r0, r3, aGH0_norm_talk_request@l /* 0x80591108@l */
/* 80590C38  90 1F 09 64 */	stw r0, 0x964(r31)
lbl_80590C3C:
/* 80590C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80590C44  7C 08 03 A6 */	mtlr r0
/* 80590C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80590C4C  4E 80 00 20 */	blr 
