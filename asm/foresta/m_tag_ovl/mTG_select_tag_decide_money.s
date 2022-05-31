lbl_805FB194:
/* 805FB194  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805FB198  3C A0 80 6D */	lis r5, data_806CF828@ha /* 0x806CF828@ha */
/* 805FB19C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805FB1A0  38 60 00 1A */	li r3, 0x1a
/* 805FB1A4  3C 84 00 02 */	addis r4, r4, 2
/* 805FB1A8  38 A5 F8 28 */	addi r5, r5, data_806CF828@l /* 0x806CF828@l */
/* 805FB1AC  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 805FB1B0  38 C5 0D 44 */	addi r6, r5, 0xd44
/* 805FB1B4  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 805FB1B8  28 00 75 30 */	cmplwi r0, 0x7530
/* 805FB1BC  41 80 00 18 */	blt lbl_805FB1D4
/* 805FB1C0  38 85 0B 10 */	addi r4, r5, 0xb10
/* 805FB1C4  38 00 00 05 */	li r0, 5
/* 805FB1C8  90 86 00 D0 */	stw r4, 0xd0(r6)
/* 805FB1CC  90 06 00 D4 */	stw r0, 0xd4(r6)
/* 805FB1D0  4E 80 00 20 */	blr 
lbl_805FB1D4:
/* 805FB1D4  28 00 27 10 */	cmplwi r0, 0x2710
/* 805FB1D8  41 80 00 18 */	blt lbl_805FB1F0
/* 805FB1DC  38 85 0B 00 */	addi r4, r5, 0xb00
/* 805FB1E0  38 00 00 04 */	li r0, 4
/* 805FB1E4  90 86 00 D0 */	stw r4, 0xd0(r6)
/* 805FB1E8  90 06 00 D4 */	stw r0, 0xd4(r6)
/* 805FB1EC  4E 80 00 20 */	blr 
lbl_805FB1F0:
/* 805FB1F0  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 805FB1F4  41 80 00 18 */	blt lbl_805FB20C
/* 805FB1F8  38 85 0A F4 */	addi r4, r5, 0xaf4
/* 805FB1FC  38 00 00 03 */	li r0, 3
/* 805FB200  90 86 00 D0 */	stw r4, 0xd0(r6)
/* 805FB204  90 06 00 D4 */	stw r0, 0xd4(r6)
/* 805FB208  4E 80 00 20 */	blr 
lbl_805FB20C:
/* 805FB20C  28 00 00 64 */	cmplwi r0, 0x64
/* 805FB210  41 80 00 18 */	blt lbl_805FB228
/* 805FB214  38 85 0A EC */	addi r4, r5, 0xaec
/* 805FB218  38 00 00 02 */	li r0, 2
/* 805FB21C  90 86 00 D0 */	stw r4, 0xd0(r6)
/* 805FB220  90 06 00 D4 */	stw r0, 0xd4(r6)
/* 805FB224  4E 80 00 20 */	blr 
lbl_805FB228:
/* 805FB228  38 60 00 00 */	li r3, 0
/* 805FB22C  4E 80 00 20 */	blr 
