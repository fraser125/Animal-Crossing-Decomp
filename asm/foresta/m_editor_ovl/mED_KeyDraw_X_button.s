lbl_805DAD78:
/* 805DAD78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DAD7C  7C 08 02 A6 */	mflr r0
/* 805DAD80  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DAD84  39 61 00 20 */	addi r11, r1, 0x20
/* 805DAD88  4B AC 01 4D */	bl func_8009AED4
/* 805DAD8C  7C 7F 1B 78 */	mr r31, r3
/* 805DAD90  7C 9D 23 78 */	mr r29, r4
/* 805DAD94  3B C0 00 00 */	li r30, 0
/* 805DAD98  38 60 00 40 */	li r3, 0x40
/* 805DAD9C  4B DB B0 D5 */	bl chkButton
/* 805DADA0  2C 03 00 00 */	cmpwi r3, 0
/* 805DADA4  41 82 00 08 */	beq lbl_805DADAC
/* 805DADA8  3B C0 00 01 */	li r30, 1
lbl_805DADAC:
/* 805DADAC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DADB0  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 805DADB4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DADB8  3C 80 80 6D */	lis r4, tex_1472@ha /* 0x806CCE34@ha */
/* 805DADBC  90 06 00 00 */	stw r0, 0(r6)
/* 805DADC0  57 C0 10 3A */	slwi r0, r30, 2
/* 805DADC4  38 84 CE 34 */	addi r4, r4, tex_1472@l /* 0x806CCE34@l */
/* 805DADC8  3C 60 80 A7 */	lis r3, kai_sousa_henkan_model@ha /* 0x80A6D880@ha */
/* 805DADCC  7C A4 00 2E */	lwzx r5, r4, r0
/* 805DADD0  3C 80 DE 00 */	lis r4, 0xde00
/* 805DADD4  38 03 D8 80 */	addi r0, r3, kai_sousa_henkan_model@l /* 0x80A6D880@l */
/* 805DADD8  90 A6 00 04 */	stw r5, 4(r6)
/* 805DADDC  90 86 00 08 */	stw r4, 8(r6)
/* 805DADE0  90 06 00 0C */	stw r0, 0xc(r6)
/* 805DADE4  38 C6 00 10 */	addi r6, r6, 0x10
/* 805DADE8  A8 1D 00 20 */	lha r0, 0x20(r29)
/* 805DADEC  2C 00 FF FF */	cmpwi r0, -1
/* 805DADF0  41 82 00 18 */	beq lbl_805DAE08
/* 805DADF4  3C 60 80 A7 */	lis r3, kai_sousa_yajirushi_model@ha /* 0x80A6D948@ha */
/* 805DADF8  90 86 00 00 */	stw r4, 0(r6)
/* 805DADFC  38 03 D9 48 */	addi r0, r3, kai_sousa_yajirushi_model@l /* 0x80A6D948@l */
/* 805DAE00  90 06 00 04 */	stw r0, 4(r6)
/* 805DAE04  38 C6 00 08 */	addi r6, r6, 8
lbl_805DAE08:
/* 805DAE08  7C C4 33 78 */	mr r4, r6
/* 805DAE0C  3C 00 DE 00 */	lis r0, 0xde00
/* 805DAE10  3C 60 80 A7 */	lis r3, kai_sousa_xbuttonT_model@ha /* 0x80A6DC18@ha */
/* 805DAE14  90 06 00 00 */	stw r0, 0(r6)
/* 805DAE18  38 03 DC 18 */	addi r0, r3, kai_sousa_xbuttonT_model@l /* 0x80A6DC18@l */
/* 805DAE1C  38 C6 00 08 */	addi r6, r6, 8
/* 805DAE20  90 04 00 04 */	stw r0, 4(r4)
/* 805DAE24  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 805DAE28  39 61 00 20 */	addi r11, r1, 0x20
/* 805DAE2C  4B AC 00 F5 */	bl func_8009AF20
/* 805DAE30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DAE34  7C 08 03 A6 */	mtlr r0
/* 805DAE38  38 21 00 20 */	addi r1, r1, 0x20
/* 805DAE3C  4E 80 00 20 */	blr 
