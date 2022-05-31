lbl_8046F1A4:
/* 8046F1A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F1A8  3C 80 80 68 */	lis r4, room_kind_data@ha /* 0x806870EC@ha */
/* 8046F1AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046F1B0  38 04 70 EC */	addi r0, r4, room_kind_data@l /* 0x806870EC@l */
/* 8046F1B4  80 83 00 14 */	lwz r4, 0x14(r3)
/* 8046F1B8  7C 03 03 78 */	mr r3, r0
/* 8046F1BC  48 00 00 18 */	b lbl_8046F1D4
lbl_8046F1C0:
/* 8046F1C0  7C 04 00 00 */	cmpw r4, r0
/* 8046F1C4  40 82 00 0C */	bne lbl_8046F1D0
/* 8046F1C8  A8 63 00 04 */	lha r3, 4(r3)
/* 8046F1CC  4E 80 00 20 */	blr 
lbl_8046F1D0:
/* 8046F1D0  38 63 00 08 */	addi r3, r3, 8
lbl_8046F1D4:
/* 8046F1D4  80 03 00 00 */	lwz r0, 0(r3)
/* 8046F1D8  2C 00 FF FF */	cmpwi r0, -1
/* 8046F1DC  40 82 FF E4 */	bne lbl_8046F1C0
/* 8046F1E0  38 60 00 00 */	li r3, 0
/* 8046F1E4  4E 80 00 20 */	blr 
