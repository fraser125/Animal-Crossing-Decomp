lbl_804A68A4:
/* 804A68A4  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A68A8  3C A0 80 64 */	lis r5, lit_472@ha /* 0x80645C9C@ha */
/* 804A68AC  38 C4 5C 8C */	addi r6, r4, data_80645C8C@l /* 0x80645C8C@l */
/* 804A68B0  C0 05 5C 9C */	lfs f0, lit_472@l(r5)  /* 0x80645C9C@l */
/* 804A68B4  C0 26 00 00 */	lfs f1, 0(r6)
/* 804A68B8  3C 80 80 4A */	lis r4, aSMAN_process_hole@ha /* 0x804A68DC@ha */
/* 804A68BC  38 04 68 DC */	addi r0, r4, aSMAN_process_hole@l /* 0x804A68DC@l */
/* 804A68C0  D0 23 00 78 */	stfs f1, 0x78(r3)
/* 804A68C4  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 804A68C8  D0 23 01 CC */	stfs f1, 0x1cc(r3)
/* 804A68CC  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 804A68D0  D0 23 01 C4 */	stfs f1, 0x1c4(r3)
/* 804A68D4  90 03 01 90 */	stw r0, 0x190(r3)
/* 804A68D8  4E 80 00 20 */	blr 
