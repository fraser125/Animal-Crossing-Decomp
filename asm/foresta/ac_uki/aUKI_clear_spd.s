lbl_804ADB48:
/* 804ADB48  3C 80 80 64 */	lis r4, data_80645F24@ha /* 0x80645F24@ha */
/* 804ADB4C  C0 04 5F 24 */	lfs f0, data_80645F24@l(r4)  /* 0x80645F24@l */
/* 804ADB50  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 804ADB54  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 804ADB58  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 804ADB5C  4E 80 00 20 */	blr 
