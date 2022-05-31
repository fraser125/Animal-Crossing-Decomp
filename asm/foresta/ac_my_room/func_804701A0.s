lbl_804701A0:
/* 804701A0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804701A4  28 00 04 F2 */	cmplwi r0, 0x4f2
/* 804701A8  40 80 00 28 */	bge lbl_804701D0
/* 804701AC  3C 80 80 68 */	lis r4, furniture_quality@ha /* 0x806873B4@ha */
/* 804701B0  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 804701B4  38 64 73 B4 */	addi r3, r4, furniture_quality@l /* 0x806873B4@l */
/* 804701B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 804701BC  28 03 00 00 */	cmplwi r3, 0
/* 804701C0  4C 82 00 20 */	bnelr 
/* 804701C4  3C 60 80 6E */	lis r3, iam_dummy@ha /* 0x806E016C@ha */
/* 804701C8  38 63 01 6C */	addi r3, r3, iam_dummy@l /* 0x806E016C@l */
/* 804701CC  4E 80 00 20 */	blr 
lbl_804701D0:
/* 804701D0  3C 60 80 6E */	lis r3, iam_dummy@ha /* 0x806E016C@ha */
/* 804701D4  38 63 01 6C */	addi r3, r3, iam_dummy@l /* 0x806E016C@l */
/* 804701D8  4E 80 00 20 */	blr 
