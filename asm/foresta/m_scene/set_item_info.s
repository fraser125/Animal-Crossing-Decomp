lbl_803F1084:
/* 803F1084  88 A4 00 01 */	lbz r5, 1(r4)
/* 803F1088  2C 05 00 00 */	cmpwi r5, 0
/* 803F108C  40 82 00 1C */	bne lbl_803F10A8
/* 803F1090  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F1094  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F1098  3C 63 00 02 */	addis r3, r3, 2
/* 803F109C  A8 03 61 18 */	lha r0, 0x6118(r3)
/* 803F10A0  B0 03 61 52 */	sth r0, 0x6152(r3)
/* 803F10A4  48 00 00 24 */	b lbl_803F10C8
lbl_803F10A8:
/* 803F10A8  3C 80 80 66 */	lis r4, profile_table@ha /* 0x8065DDBC@ha */
/* 803F10AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F10B0  54 A0 08 3C */	slwi r0, r5, 1
/* 803F10B4  38 84 DD BC */	addi r4, r4, profile_table@l /* 0x8065DDBC@l */
/* 803F10B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F10BC  7C 04 02 AE */	lhax r0, r4, r0
/* 803F10C0  3C 63 00 02 */	addis r3, r3, 2
/* 803F10C4  B0 03 61 52 */	sth r0, 0x6152(r3)
lbl_803F10C8:
/* 803F10C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F10CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F10D0  3C 63 00 02 */	addis r3, r3, 2
/* 803F10D4  B0 A3 61 50 */	sth r5, 0x6150(r3)
/* 803F10D8  4E 80 00 20 */	blr 
