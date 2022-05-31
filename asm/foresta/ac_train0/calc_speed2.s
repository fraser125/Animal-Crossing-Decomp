lbl_805C0064:
/* 805C0064  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805C0068  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064AC70@ha */
/* 805C006C  C0 03 AC 70 */	lfs f0, lit_523@l(r3)  /* 0x8064AC70@l */
/* 805C0070  FC 40 0A 10 */	fabs f2, f1
/* 805C0074  FC 40 10 18 */	frsp f2, f2
/* 805C0078  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C007C  7C 00 00 26 */	mfcr r0
/* 805C0080  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805C0084  4D 82 00 20 */	beqlr 
/* 805C0088  3C 60 80 65 */	lis r3, lit_536@ha /* 0x8064AC78@ha */
/* 805C008C  C0 23 AC 78 */	lfs f1, lit_536@l(r3)  /* 0x8064AC78@l */
/* 805C0090  4E 80 00 20 */	blr 
