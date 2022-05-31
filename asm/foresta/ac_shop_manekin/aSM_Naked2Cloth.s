lbl_804A0860:
/* 804A0860  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804A0864  54 67 E0 06 */	slwi r7, r3, 0x1c
/* 804A0868  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804A086C  54 66 0F FE */	srwi r6, r3, 0x1f
/* 804A0870  3C 65 00 02 */	addis r3, r5, 2
/* 804A0874  54 80 E0 06 */	slwi r0, r4, 0x1c
/* 804A0878  80 A3 60 6C */	lwz r5, 0x606c(r3)
/* 804A087C  54 83 0F FE */	srwi r3, r4, 0x1f
/* 804A0880  7C 86 38 50 */	subf r4, r6, r7
/* 804A0884  7C 03 00 50 */	subf r0, r3, r0
/* 804A0888  28 05 00 00 */	cmplwi r5, 0
/* 804A088C  54 84 20 3E */	rotlwi r4, r4, 4
/* 804A0890  54 00 20 3E */	rotlwi r0, r0, 4
/* 804A0894  7C C4 32 14 */	add r6, r4, r6
/* 804A0898  7C 80 1A 14 */	add r4, r0, r3
/* 804A089C  4D 82 00 20 */	beqlr 
/* 804A08A0  80 65 00 00 */	lwz r3, 0(r5)
/* 804A08A4  28 03 00 00 */	cmplwi r3, 0
/* 804A08A8  4D 82 00 20 */	beqlr 
/* 804A08AC  80 03 01 74 */	lwz r0, 0x174(r3)
/* 804A08B0  80 63 01 78 */	lwz r3, 0x178(r3)
/* 804A08B4  7C 09 03 A6 */	mtctr r0
/* 804A08B8  2C 00 00 00 */	cmpwi r0, 0
/* 804A08BC  4C 81 00 20 */	blelr 
lbl_804A08C0:
/* 804A08C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A08C4  7C 00 30 00 */	cmpw r0, r6
/* 804A08C8  40 82 00 1C */	bne lbl_804A08E4
/* 804A08CC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 804A08D0  7C 00 20 00 */	cmpw r0, r4
/* 804A08D4  40 82 00 10 */	bne lbl_804A08E4
/* 804A08D8  38 00 00 00 */	li r0, 0
/* 804A08DC  90 03 00 50 */	stw r0, 0x50(r3)
/* 804A08E0  4E 80 00 20 */	blr 
lbl_804A08E4:
/* 804A08E4  38 63 00 54 */	addi r3, r3, 0x54
/* 804A08E8  42 00 FF D8 */	bdnz lbl_804A08C0
/* 804A08EC  4E 80 00 20 */	blr 
