lbl_80557C60:
/* 80557C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557C64  7C 08 02 A6 */	mflr r0
/* 80557C68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80557C70  4B B4 32 65 */	bl func_8009AED4
/* 80557C74  7C 7D 1B 78 */	mr r29, r3
/* 80557C78  3C 60 80 6A */	lis r3, dt_tbl_661@ha /* 0x806A690C@ha */
/* 80557C7C  90 BD 09 94 */	stw r5, 0x994(r29)
/* 80557C80  54 A6 20 36 */	slwi r6, r5, 4
/* 80557C84  38 03 69 0C */	addi r0, r3, dt_tbl_661@l /* 0x806A690C@l */
/* 80557C88  7C 9E 23 78 */	mr r30, r4
/* 80557C8C  7F E0 32 14 */	add r31, r0, r6
/* 80557C90  80 1F 00 00 */	lwz r0, 0(r31)
/* 80557C94  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80557C98  80 1F 00 08 */	lwz r0, 8(r31)
/* 80557C9C  90 1D 09 64 */	stw r0, 0x964(r29)
/* 80557CA0  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 80557CA4  7C 60 07 75 */	extsb. r0, r3
/* 80557CA8  41 80 00 0C */	blt lbl_80557CB4
/* 80557CAC  7C 60 07 74 */	extsb r0, r3
/* 80557CB0  90 1D 09 A0 */	stw r0, 0x9a0(r29)
lbl_80557CB4:
/* 80557CB4  88 7F 00 0D */	lbz r3, 0xd(r31)
/* 80557CB8  7C 60 07 75 */	extsb. r0, r3
/* 80557CBC  41 80 00 0C */	blt lbl_80557CC8
/* 80557CC0  7C 60 07 74 */	extsb r0, r3
/* 80557CC4  90 1D 09 A4 */	stw r0, 0x9a4(r29)
lbl_80557CC8:
/* 80557CC8  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 80557CCC  7F A3 EB 78 */	mr r3, r29
/* 80557CD0  7C A4 2B 78 */	mr r4, r5
/* 80557CD4  90 1D 09 98 */	stw r0, 0x998(r29)
/* 80557CD8  4B FF F7 35 */	bl aMJN2_set_animation
/* 80557CDC  81 9F 00 04 */	lwz r12, 4(r31)
/* 80557CE0  7F A3 EB 78 */	mr r3, r29
/* 80557CE4  7F C4 F3 78 */	mr r4, r30
/* 80557CE8  7D 89 03 A6 */	mtctr r12
/* 80557CEC  4E 80 04 21 */	bctrl 
/* 80557CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80557CF4  4B B4 32 2D */	bl func_8009AF20
/* 80557CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557CFC  7C 08 03 A6 */	mtlr r0
/* 80557D00  38 21 00 20 */	addi r1, r1, 0x20
/* 80557D04  4E 80 00 20 */	blr 
