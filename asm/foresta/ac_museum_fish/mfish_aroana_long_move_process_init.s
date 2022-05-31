lbl_8043B68C:
/* 8043B68C  3C 80 80 64 */	lis r4, lit_839@ha /* 0x806442D4@ha */
/* 8043B690  C0 23 05 E8 */	lfs f1, 0x5e8(r3)
/* 8043B694  C0 04 42 D4 */	lfs f0, lit_839@l(r4)  /* 0x806442D4@l */
/* 8043B698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043B69C  40 81 00 08 */	ble lbl_8043B6A4
/* 8043B6A0  48 00 00 08 */	b lbl_8043B6A8
lbl_8043B6A4:
/* 8043B6A4  FC 20 00 90 */	fmr f1, f0
lbl_8043B6A8:
/* 8043B6A8  3C A0 80 64 */	lis r5, lit_468@ha /* 0x80644248@ha */
/* 8043B6AC  3C 80 80 44 */	lis r4, mfish_aroana_long_move_process@ha /* 0x8043B6C8@ha */
/* 8043B6B0  D0 23 05 F0 */	stfs f1, 0x5f0(r3)
/* 8043B6B4  38 04 B6 C8 */	addi r0, r4, mfish_aroana_long_move_process@l /* 0x8043B6C8@l */
/* 8043B6B8  C0 05 42 48 */	lfs f0, lit_468@l(r5)  /* 0x80644248@l */
/* 8043B6BC  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 8043B6C0  90 03 00 34 */	stw r0, 0x34(r3)
/* 8043B6C4  4E 80 00 20 */	blr 
