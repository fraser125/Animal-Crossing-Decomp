lbl_804CE580:
/* 804CE580  3C 80 81 1D */	lis r4, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE584  3C 60 80 64 */	lis r3, eEC_light_default@ha /* 0x806462B0@ha */
/* 804CE588  38 84 2C EC */	addi r4, r4, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE58C  38 00 00 03 */	li r0, 3
/* 804CE590  38 63 62 B0 */	addi r3, r3, eEC_light_default@l /* 0x806462B0@l */
/* 804CE594  38 A4 FF FC */	addi r5, r4, -4
/* 804CE598  38 83 FF FC */	addi r4, r3, -4
/* 804CE59C  7C 09 03 A6 */	mtctr r0
lbl_804CE5A0:
/* 804CE5A0  80 64 00 04 */	lwz r3, 4(r4)
/* 804CE5A4  84 04 00 08 */	lwzu r0, 8(r4)
/* 804CE5A8  90 65 00 04 */	stw r3, 4(r5)
/* 804CE5AC  94 05 00 08 */	stwu r0, 8(r5)
/* 804CE5B0  42 00 FF F0 */	bdnz lbl_804CE5A0
/* 804CE5B4  3C 60 81 1D */	lis r3, eEL_light_data@ha /* 0x811D2CEC@ha */
/* 804CE5B8  38 00 00 0A */	li r0, 0xa
/* 804CE5BC  38 63 2C EC */	addi r3, r3, eEL_light_data@l /* 0x811D2CEC@l */
/* 804CE5C0  B0 03 00 0C */	sth r0, 0xc(r3)
/* 804CE5C4  4E 80 00 20 */	blr 
