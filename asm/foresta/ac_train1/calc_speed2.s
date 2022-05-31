lbl_805C0678:
/* 805C0678  C0 23 02 CC */	lfs f1, 0x2cc(r3)
/* 805C067C  3C 60 80 65 */	lis r3, lit_461@ha /* 0x8064AC98@ha */
/* 805C0680  C0 03 AC 98 */	lfs f0, lit_461@l(r3)  /* 0x8064AC98@l */
/* 805C0684  FC 40 0A 10 */	fabs f2, f1
/* 805C0688  FC 40 10 18 */	frsp f2, f2
/* 805C068C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C0690  7C 00 00 26 */	mfcr r0
/* 805C0694  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805C0698  4D 82 00 20 */	beqlr 
/* 805C069C  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064ACA4@ha */
/* 805C06A0  C0 23 AC A4 */	lfs f1, lit_475@l(r3)  /* 0x8064ACA4@l */
/* 805C06A4  4E 80 00 20 */	blr 
