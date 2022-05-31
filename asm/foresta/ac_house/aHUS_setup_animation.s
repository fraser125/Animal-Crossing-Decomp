lbl_805AFE2C:
/* 805AFE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AFE30  7C 08 02 A6 */	mflr r0
/* 805AFE34  3C A0 80 6C */	lis r5, data_806C5240@ha /* 0x806C5240@ha */
/* 805AFE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AFE3C  39 25 52 40 */	addi r9, r5, data_806C5240@l /* 0x806C5240@l */
/* 805AFE40  80 83 02 D8 */	lwz r4, 0x2d8(r3)
/* 805AFE44  80 03 02 B0 */	lwz r0, 0x2b0(r3)
/* 805AFE48  20 84 00 03 */	subfic r4, r4, 3
/* 805AFE4C  7C 84 00 34 */	cntlzw r4, r4
/* 805AFE50  2C 00 00 03 */	cmpwi r0, 3
/* 805AFE54  54 8B D9 7E */	srwi r11, r4, 5
/* 805AFE58  41 82 00 30 */	beq lbl_805AFE88
/* 805AFE5C  40 80 00 10 */	bge lbl_805AFE6C
/* 805AFE60  2C 00 00 02 */	cmpwi r0, 2
/* 805AFE64  40 80 00 14 */	bge lbl_805AFE78
/* 805AFE68  48 00 00 20 */	b lbl_805AFE88
lbl_805AFE6C:
/* 805AFE6C  2C 00 00 05 */	cmpwi r0, 5
/* 805AFE70  40 80 00 18 */	bge lbl_805AFE88
/* 805AFE74  48 00 00 0C */	b lbl_805AFE80
lbl_805AFE78:
/* 805AFE78  38 C0 00 02 */	li r6, 2
/* 805AFE7C  48 00 00 10 */	b lbl_805AFE8C
lbl_805AFE80:
/* 805AFE80  38 C0 00 01 */	li r6, 1
/* 805AFE84  48 00 00 08 */	b lbl_805AFE8C
lbl_805AFE88:
/* 805AFE88  38 C0 00 00 */	li r6, 0
lbl_805AFE8C:
/* 805AFE8C  30 86 FF FF */	addic r4, r6, -1
/* 805AFE90  80 03 02 A8 */	lwz r0, 0x2a8(r3)
/* 805AFE94  7C 84 31 10 */	subfe r4, r4, r6
/* 805AFE98  54 CA 10 3A */	slwi r10, r6, 2
/* 805AFE9C  1D 04 00 28 */	mulli r8, r4, 0x28
/* 805AFEA0  38 E9 01 B0 */	addi r7, r9, 0x1b0
/* 805AFEA4  38 C9 01 A0 */	addi r6, r9, 0x1a0
/* 805AFEA8  FC 80 08 90 */	fmr f4, f1
/* 805AFEAC  7C 26 54 2E */	lfsx f1, r6, r10
/* 805AFEB0  3C A0 80 65 */	lis r5, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805AFEB4  38 C5 A7 8C */	addi r6, r5, data_8064A78C@l /* 0x8064A78C@l */
/* 805AFEB8  54 00 18 38 */	slwi r0, r0, 3
/* 805AFEBC  7C A8 02 14 */	add r5, r8, r0
/* 805AFEC0  80 83 01 90 */	lwz r4, 0x190(r3)
/* 805AFEC4  55 60 10 3A */	slwi r0, r11, 2
/* 805AFEC8  7C 47 54 2E */	lfsx f2, r7, r10
/* 805AFECC  C0 A6 00 00 */	lfs f5, 0(r6)
/* 805AFED0  FC 60 08 90 */	fmr f3, f1
/* 805AFED4  39 09 01 50 */	addi r8, r9, 0x150
/* 805AFED8  7C 05 02 14 */	add r0, r5, r0
/* 805AFEDC  7C A8 00 2E */	lwzx r5, r8, r0
/* 805AFEE0  38 63 01 78 */	addi r3, r3, 0x178
/* 805AFEE4  38 C0 00 00 */	li r6, 0
/* 805AFEE8  38 E0 00 00 */	li r7, 0
/* 805AFEEC  4B DC 0D E9 */	bl cKF_SkeletonInfo_R_init
/* 805AFEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AFEF4  7C 08 03 A6 */	mtlr r0
/* 805AFEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 805AFEFC  4E 80 00 20 */	blr 
