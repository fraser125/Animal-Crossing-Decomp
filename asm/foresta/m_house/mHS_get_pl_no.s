lbl_803B35D8:
/* 803B35D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B35DC  38 00 00 04 */	li r0, 4
/* 803B35E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B35E4  38 A0 00 00 */	li r5, 0
/* 803B35E8  3C 84 00 02 */	addis r4, r4, 2
/* 803B35EC  88 84 06 8A */	lbz r4, 0x68a(r4)
/* 803B35F0  7C 09 03 A6 */	mtctr r0
lbl_803B35F4:
/* 803B35F4  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 803B35F8  7C 00 18 40 */	cmplw r0, r3
/* 803B35FC  41 82 00 10 */	beq lbl_803B360C
/* 803B3600  54 84 F0 BE */	srwi r4, r4, 2
/* 803B3604  38 A5 00 01 */	addi r5, r5, 1
/* 803B3608  42 00 FF EC */	bdnz lbl_803B35F4
lbl_803B360C:
/* 803B360C  7C A3 2B 78 */	mr r3, r5
/* 803B3610  4E 80 00 20 */	blr 
