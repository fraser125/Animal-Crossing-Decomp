lbl_804835C4:
/* 804835C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804835C8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804835CC  3C A5 00 02 */	addis r5, r5, 2
/* 804835D0  80 A5 60 30 */	lwz r5, 0x6030(r5)
/* 804835D4  28 05 00 00 */	cmplwi r5, 0
/* 804835D8  41 82 00 0C */	beq lbl_804835E4
/* 804835DC  80 05 00 00 */	lwz r0, 0(r5)
/* 804835E0  48 00 00 08 */	b lbl_804835E8
lbl_804835E4:
/* 804835E4  38 00 00 00 */	li r0, 0
lbl_804835E8:
/* 804835E8  28 00 00 00 */	cmplwi r0, 0
/* 804835EC  41 82 00 3C */	beq lbl_80483628
/* 804835F0  28 05 00 00 */	cmplwi r5, 0
/* 804835F4  41 82 00 0C */	beq lbl_80483600
/* 804835F8  80 A5 00 00 */	lwz r5, 0(r5)
/* 804835FC  48 00 00 08 */	b lbl_80483604
lbl_80483600:
/* 80483600  38 A0 00 00 */	li r5, 0
lbl_80483604:
/* 80483604  80 05 03 BC */	lwz r0, 0x3bc(r5)
/* 80483608  2C 00 00 00 */	cmpwi r0, 0
/* 8048360C  40 82 00 1C */	bne lbl_80483628
/* 80483610  90 65 03 C4 */	stw r3, 0x3c4(r5)
/* 80483614  38 00 00 01 */	li r0, 1
/* 80483618  38 60 00 01 */	li r3, 1
/* 8048361C  90 85 03 C8 */	stw r4, 0x3c8(r5)
/* 80483620  90 05 03 BC */	stw r0, 0x3bc(r5)
/* 80483624  4E 80 00 20 */	blr 
lbl_80483628:
/* 80483628  38 60 00 00 */	li r3, 0
/* 8048362C  4E 80 00 20 */	blr 
