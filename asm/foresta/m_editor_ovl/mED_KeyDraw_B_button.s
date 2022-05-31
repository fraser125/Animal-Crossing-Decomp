lbl_805DACD8:
/* 805DACD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DACDC  7C 08 02 A6 */	mflr r0
/* 805DACE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DACE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DACE8  3B E0 00 00 */	li r31, 0
/* 805DACEC  93 C1 00 08 */	stw r30, 8(r1)
/* 805DACF0  7C 7E 1B 78 */	mr r30, r3
/* 805DACF4  38 60 40 00 */	li r3, 0x4000
/* 805DACF8  4B DB B1 79 */	bl chkButton
/* 805DACFC  2C 03 00 00 */	cmpwi r3, 0
/* 805DAD00  41 82 00 08 */	beq lbl_805DAD08
/* 805DAD04  3B E0 00 01 */	li r31, 1
lbl_805DAD08:
/* 805DAD08  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DAD0C  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DAD10  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DAD14  3C 60 80 6D */	lis r3, tex_1439@ha /* 0x806CCE2C@ha */
/* 805DAD18  90 06 00 00 */	stw r0, 0(r6)
/* 805DAD1C  3C 80 80 A7 */	lis r4, kai_sousa_bbuttonT_model@ha /* 0x80A6DCD8@ha */
/* 805DAD20  57 E0 10 3A */	slwi r0, r31, 2
/* 805DAD24  38 63 CE 2C */	addi r3, r3, tex_1439@l /* 0x806CCE2C@l */
/* 805DAD28  7C 03 00 2E */	lwzx r0, r3, r0
/* 805DAD2C  3C 60 80 A7 */	lis r3, kai_sousa_cancelT_model@ha /* 0x80A6DDD8@ha */
/* 805DAD30  3C A0 DE 00 */	lis r5, 0xde00
/* 805DAD34  38 84 DC D8 */	addi r4, r4, kai_sousa_bbuttonT_model@l /* 0x80A6DCD8@l */
/* 805DAD38  90 06 00 04 */	stw r0, 4(r6)
/* 805DAD3C  38 03 DD D8 */	addi r0, r3, kai_sousa_cancelT_model@l /* 0x80A6DDD8@l */
/* 805DAD40  90 A6 00 08 */	stw r5, 8(r6)
/* 805DAD44  90 86 00 0C */	stw r4, 0xc(r6)
/* 805DAD48  38 C6 00 10 */	addi r6, r6, 0x10
/* 805DAD4C  7C C3 33 78 */	mr r3, r6
/* 805DAD50  90 A6 00 00 */	stw r5, 0(r6)
/* 805DAD54  38 C6 00 08 */	addi r6, r6, 8
/* 805DAD58  90 03 00 04 */	stw r0, 4(r3)
/* 805DAD5C  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DAD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DAD64  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DAD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DAD6C  7C 08 03 A6 */	mtlr r0
/* 805DAD70  38 21 00 10 */	addi r1, r1, 0x10
/* 805DAD74  4E 80 00 20 */	blr 
