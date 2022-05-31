lbl_804DABA4:
/* 804DABA4  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804DABA8  38 C0 00 00 */	li r6, 0
/* 804DABAC  38 05 FF C6 */	addi r0, r5, -58
/* 804DABB0  28 00 00 06 */	cmplwi r0, 6
/* 804DABB4  41 81 00 40 */	bgt lbl_804DABF4
/* 804DABB8  3C A0 80 6A */	lis r5, lit_3099@ha /* 0x8069E630@ha */
/* 804DABBC  54 00 10 3A */	slwi r0, r0, 2
/* 804DABC0  38 A5 E6 30 */	addi r5, r5, lit_3099@l /* 0x8069E630@l */
/* 804DABC4  7C 05 00 2E */	lwzx r0, r5, r0
/* 804DABC8  7C 09 03 A6 */	mtctr r0
/* 804DABCC  4E 80 04 20 */	bctr 
lbl_804DABD0:
/* 804DABD0  38 C3 0D 18 */	addi r6, r3, 0xd18
/* 804DABD4  48 00 00 20 */	b lbl_804DABF4
lbl_804DABD8:
/* 804DABD8  38 C3 0D 18 */	addi r6, r3, 0xd18
/* 804DABDC  48 00 00 18 */	b lbl_804DABF4
lbl_804DABE0:
/* 804DABE0  38 C3 0D 18 */	addi r6, r3, 0xd18
/* 804DABE4  48 00 00 10 */	b lbl_804DABF4
lbl_804DABE8:
/* 804DABE8  38 C3 0D 18 */	addi r6, r3, 0xd18
/* 804DABEC  48 00 00 08 */	b lbl_804DABF4
lbl_804DABF0:
/* 804DABF0  38 C3 0D 18 */	addi r6, r3, 0xd18
lbl_804DABF4:
/* 804DABF4  28 06 00 00 */	cmplwi r6, 0
/* 804DABF8  41 82 00 2C */	beq lbl_804DAC24
/* 804DABFC  28 04 00 00 */	cmplwi r4, 0
/* 804DAC00  41 82 00 1C */	beq lbl_804DAC1C
/* 804DAC04  80 66 00 00 */	lwz r3, 0(r6)
/* 804DAC08  80 06 00 04 */	lwz r0, 4(r6)
/* 804DAC0C  90 64 00 00 */	stw r3, 0(r4)
/* 804DAC10  90 04 00 04 */	stw r0, 4(r4)
/* 804DAC14  80 06 00 08 */	lwz r0, 8(r6)
/* 804DAC18  90 04 00 08 */	stw r0, 8(r4)
lbl_804DAC1C:
/* 804DAC1C  38 60 00 01 */	li r3, 1
/* 804DAC20  4E 80 00 20 */	blr 
lbl_804DAC24:
/* 804DAC24  38 60 00 00 */	li r3, 0
/* 804DAC28  4E 80 00 20 */	blr 
