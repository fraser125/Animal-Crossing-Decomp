lbl_805DAE40:
/* 805DAE40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DAE44  7C 08 02 A6 */	mflr r0
/* 805DAE48  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DAE4C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DAE50  4B AC 00 81 */	bl func_8009AED0
/* 805DAE54  3C A0 80 6D */	lis r5, data_806CC8D8@ha /* 0x806CC8D8@ha */
/* 805DAE58  8B C4 00 05 */	lbz r30, 5(r4)
/* 805DAE5C  7C 7D 1B 78 */	mr r29, r3
/* 805DAE60  3B 80 00 00 */	li r28, 0
/* 805DAE64  3B E5 C8 D8 */	addi r31, r5, data_806CC8D8@l /* 0x806CC8D8@l */
/* 805DAE68  38 60 00 80 */	li r3, 0x80
/* 805DAE6C  4B DB B0 05 */	bl chkButton
/* 805DAE70  2C 03 00 00 */	cmpwi r3, 0
/* 805DAE74  41 82 00 08 */	beq lbl_805DAE7C
/* 805DAE78  3B 80 00 01 */	li r28, 1
lbl_805DAE7C:
/* 805DAE7C  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060020@ha */
/* 805DAE80  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 805DAE84  38 04 00 20 */	addi r0, r4, 0x0020 /* 0xDB060020@l */
/* 805DAE88  38 BF 05 64 */	addi r5, r31, 0x564
/* 805DAE8C  90 03 00 00 */	stw r0, 0(r3)
/* 805DAE90  57 80 10 3A */	slwi r0, r28, 2
/* 805DAE94  3C 80 80 A7 */	lis r4, kai_sousa_kirikae_model@ha /* 0x80A6D848@ha */
/* 805DAE98  3D 20 DE 00 */	lis r9, 0xde00
/* 805DAE9C  7C A5 00 2E */	lwzx r5, r5, r0
/* 805DAEA0  38 C4 D8 48 */	addi r6, r4, kai_sousa_kirikae_model@l /* 0x80A6D848@l */
/* 805DAEA4  38 00 00 03 */	li r0, 3
/* 805DAEA8  39 5F 05 78 */	addi r10, r31, 0x578
/* 805DAEAC  90 A3 00 04 */	stw r5, 4(r3)
/* 805DAEB0  38 BF 05 6C */	addi r5, r31, 0x56c
/* 805DAEB4  39 60 00 00 */	li r11, 0
/* 805DAEB8  38 80 00 00 */	li r4, 0
/* 805DAEBC  91 23 00 08 */	stw r9, 8(r3)
/* 805DAEC0  90 C3 00 0C */	stw r6, 0xc(r3)
/* 805DAEC4  7C 09 03 A6 */	mtctr r0
/* 805DAEC8  39 4A 00 05 */	addi r10, r10, 5
/* 805DAECC  38 63 00 10 */	addi r3, r3, 0x10
lbl_805DAED0:
/* 805DAED0  7C 0B F0 00 */	cmpw r11, r30
/* 805DAED4  40 82 00 0C */	bne lbl_805DAEE0
/* 805DAED8  7D 48 53 78 */	mr r8, r10
/* 805DAEDC  48 00 00 08 */	b lbl_805DAEE4
lbl_805DAEE0:
/* 805DAEE0  39 1F 05 78 */	addi r8, r31, 0x578
lbl_805DAEE4:
/* 805DAEE4  88 08 00 04 */	lbz r0, 4(r8)
/* 805DAEE8  39 6B 00 01 */	addi r11, r11, 1
/* 805DAEEC  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805DAEF0  90 03 00 00 */	stw r0, 0(r3)
/* 805DAEF4  88 08 00 01 */	lbz r0, 1(r8)
/* 805DAEF8  88 C8 00 00 */	lbz r6, 0(r8)
/* 805DAEFC  88 E8 00 02 */	lbz r7, 2(r8)
/* 805DAF00  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805DAF04  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 805DAF08  89 08 00 03 */	lbz r8, 3(r8)
/* 805DAF0C  50 E0 44 2E */	rlwimi r0, r7, 8, 0x10, 0x17
/* 805DAF10  51 00 06 3E */	rlwimi r0, r8, 0, 0x18, 0x1f
/* 805DAF14  90 03 00 04 */	stw r0, 4(r3)
/* 805DAF18  91 23 00 08 */	stw r9, 8(r3)
/* 805DAF1C  7C 05 20 2E */	lwzx r0, r5, r4
/* 805DAF20  38 84 00 04 */	addi r4, r4, 4
/* 805DAF24  90 03 00 0C */	stw r0, 0xc(r3)
/* 805DAF28  38 63 00 10 */	addi r3, r3, 0x10
/* 805DAF2C  42 00 FF A4 */	bdnz lbl_805DAED0
/* 805DAF30  7C 65 1B 78 */	mr r5, r3
/* 805DAF34  3C 00 DE 00 */	lis r0, 0xde00
/* 805DAF38  3C 80 80 A7 */	lis r4, kai_sousa_ybuttonT_model@ha /* 0x80A6DBD8@ha */
/* 805DAF3C  90 03 00 00 */	stw r0, 0(r3)
/* 805DAF40  38 04 DB D8 */	addi r0, r4, kai_sousa_ybuttonT_model@l /* 0x80A6DBD8@l */
/* 805DAF44  38 63 00 08 */	addi r3, r3, 8
/* 805DAF48  90 05 00 04 */	stw r0, 4(r5)
/* 805DAF4C  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 805DAF50  39 61 00 20 */	addi r11, r1, 0x20
/* 805DAF54  4B AB FF C9 */	bl func_8009AF1C
/* 805DAF58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DAF5C  7C 08 03 A6 */	mtlr r0
/* 805DAF60  38 21 00 20 */	addi r1, r1, 0x20
/* 805DAF64  4E 80 00 20 */	blr 
