lbl_80408C98:
/* 80408C98  EC 21 00 72 */	fmuls f1, f1, f1
/* 80408C9C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80408CA0  EC 21 00 2A */	fadds f1, f1, f0
/* 80408CA4  4E 80 00 20 */	blr 
