lbl_805181A8:
/* 805181A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805181AC  7C 08 02 A6 */	mflr r0
/* 805181B0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805181B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805181B8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805181BC  3C A5 00 02 */	addis r5, r5, 2
/* 805181C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805181C4  7C 7F 1B 78 */	mr r31, r3
/* 805181C8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805181CC  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 805181D0  7D 89 03 A6 */	mtctr r12
/* 805181D4  4E 80 04 21 */	bctrl 
/* 805181D8  7F E3 FB 78 */	mr r3, r31
/* 805181DC  48 00 02 C1 */	bl fish_save_area_dt
/* 805181E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805181E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805181E8  7C 08 03 A6 */	mtlr r0
/* 805181EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805181F0  4E 80 00 20 */	blr 
