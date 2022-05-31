lbl_803C06F8:
/* 803C06F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C06FC  7C 08 02 A6 */	mflr r0
/* 803C0700  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C0704  39 61 00 20 */	addi r11, r1, 0x20
/* 803C0708  4B CD A7 C5 */	bl func_8009AECC
/* 803C070C  7C A0 00 34 */	cntlzw r0, r5
/* 803C0710  39 05 FF FF */	addi r8, r5, -1
/* 803C0714  54 1D D9 7E */	srwi r29, r0, 5
/* 803C0718  3C A0 81 17 */	lis r5, tmp_buff@ha /* 0x8116A438@ha */
/* 803C071C  21 3D 00 00 */	subfic r9, r29, 0
/* 803C0720  55 00 10 34 */	rlwinm r0, r8, 2, 0, 0x1a
/* 803C0724  7D 49 49 10 */	subfe r10, r9, r9
/* 803C0728  55 08 07 7E */	clrlwi r8, r8, 0x1d
/* 803C072C  21 3D 00 00 */	subfic r9, r29, 0
/* 803C0730  7C 9B 23 78 */	mr r27, r4
/* 803C0734  7C 0A 50 78 */	andc r10, r0, r10
/* 803C0738  38 05 A4 38 */	addi r0, r5, tmp_buff@l /* 0x8116A438@l */
/* 803C073C  7C A9 49 10 */	subfe r5, r9, r9
/* 803C0740  7C DC 33 78 */	mr r28, r6
/* 803C0744  7D 1E 28 78 */	andc r30, r8, r5
/* 803C0748  7C FF 3B 78 */	mr r31, r7
/* 803C074C  7C 04 03 78 */	mr r4, r0
/* 803C0750  7C 63 52 14 */	add r3, r3, r10
/* 803C0754  38 A0 00 40 */	li r5, 0x40
/* 803C0758  4B C4 65 1D */	bl _JW_GetResourceAram
/* 803C075C  2C 1D 00 00 */	cmpwi r29, 0
/* 803C0760  41 82 00 20 */	beq lbl_803C0780
/* 803C0764  3C 60 81 17 */	lis r3, tmp_buff@ha /* 0x8116A438@ha */
/* 803C0768  93 7C 00 00 */	stw r27, 0(r28)
/* 803C076C  57 C0 10 3A */	slwi r0, r30, 2
/* 803C0770  38 63 A4 38 */	addi r3, r3, tmp_buff@l /* 0x8116A438@l */
/* 803C0774  7C 03 00 2E */	lwzx r0, r3, r0
/* 803C0778  90 1F 00 00 */	stw r0, 0(r31)
/* 803C077C  48 00 00 30 */	b lbl_803C07AC
lbl_803C0780:
/* 803C0780  3C 60 81 17 */	lis r3, tmp_buff@ha /* 0x8116A438@ha */
/* 803C0784  57 C5 10 3A */	slwi r5, r30, 2
/* 803C0788  38 83 A4 38 */	addi r4, r3, tmp_buff@l /* 0x8116A438@l */
/* 803C078C  7C 04 28 2E */	lwzx r0, r4, r5
/* 803C0790  7C 64 2A 14 */	add r3, r4, r5
/* 803C0794  7C 1B 02 14 */	add r0, r27, r0
/* 803C0798  90 1C 00 00 */	stw r0, 0(r28)
/* 803C079C  7C 84 28 2E */	lwzx r4, r4, r5
/* 803C07A0  80 03 00 04 */	lwz r0, 4(r3)
/* 803C07A4  7C 04 00 50 */	subf r0, r4, r0
/* 803C07A8  90 1F 00 00 */	stw r0, 0(r31)
lbl_803C07AC:
/* 803C07AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C07B0  4B CD A7 69 */	bl func_8009AF18
/* 803C07B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C07B8  7C 08 03 A6 */	mtlr r0
/* 803C07BC  38 21 00 20 */	addi r1, r1, 0x20
/* 803C07C0  4E 80 00 20 */	blr 
