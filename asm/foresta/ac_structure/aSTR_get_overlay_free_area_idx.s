lbl_805BCC48:
/* 805BCC48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BCC4C  38 00 00 09 */	li r0, 9
/* 805BCC50  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805BCC54  38 60 FF FF */	li r3, -1
/* 805BCC58  3C 84 00 02 */	addis r4, r4, 2
/* 805BCC5C  38 A0 00 00 */	li r5, 0
/* 805BCC60  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BCC64  38 84 00 5C */	addi r4, r4, 0x5c
/* 805BCC68  7C 09 03 A6 */	mtctr r0
lbl_805BCC6C:
/* 805BCC6C  80 04 00 04 */	lwz r0, 4(r4)
/* 805BCC70  2C 00 00 00 */	cmpwi r0, 0
/* 805BCC74  40 82 00 0C */	bne lbl_805BCC80
/* 805BCC78  7C A3 2B 78 */	mr r3, r5
/* 805BCC7C  4E 80 00 20 */	blr 
lbl_805BCC80:
/* 805BCC80  38 84 00 08 */	addi r4, r4, 8
/* 805BCC84  38 A5 00 01 */	addi r5, r5, 1
/* 805BCC88  42 00 FF E4 */	bdnz lbl_805BCC6C
/* 805BCC8C  4E 80 00 20 */	blr 
