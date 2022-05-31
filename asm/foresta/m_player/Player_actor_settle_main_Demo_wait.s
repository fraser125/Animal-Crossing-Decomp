lbl_804FCEB8:
/* 804FCEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCEBC  7C 08 02 A6 */	mflr r0
/* 804FCEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCEC4  80 A3 0D 18 */	lwz r5, 0xd18(r3)
/* 804FCEC8  2C 05 00 00 */	cmpwi r5, 0
/* 804FCECC  40 81 00 2C */	ble lbl_804FCEF8
/* 804FCED0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FCED4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804FCED8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804FCEDC  38 65 FF FF */	addi r3, r5, -1
/* 804FCEE0  3C A4 00 02 */	addis r5, r4, 2
/* 804FCEE4  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804FCEE8  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804FCEEC  81 85 00 04 */	lwz r12, 4(r5)
/* 804FCEF0  7D 89 03 A6 */	mtctr r12
/* 804FCEF4  4E 80 04 21 */	bctrl 
lbl_804FCEF8:
/* 804FCEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCEFC  7C 08 03 A6 */	mtlr r0
/* 804FCF00  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCF04  4E 80 00 20 */	blr 
