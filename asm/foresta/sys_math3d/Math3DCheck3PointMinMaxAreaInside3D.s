lbl_80408B48:
/* 80408B48  C0 43 00 00 */	lfs f2, 0(r3)
/* 80408B4C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80408B50  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80408B54  FC 00 10 90 */	fmr f0, f2
/* 80408B58  C0 E4 00 00 */	lfs f7, 0(r4)
/* 80408B5C  FC 80 18 90 */	fmr f4, f3
/* 80408B60  FC C0 28 90 */	fmr f6, f5
/* 80408B64  FC 02 38 40 */	fcmpo cr0, f2, f7
/* 80408B68  40 81 00 0C */	ble lbl_80408B74
/* 80408B6C  FC 00 38 90 */	fmr f0, f7
/* 80408B70  48 00 00 0C */	b lbl_80408B7C
lbl_80408B74:
/* 80408B74  40 80 00 08 */	bge lbl_80408B7C
/* 80408B78  FC 40 38 90 */	fmr f2, f7
lbl_80408B7C:
/* 80408B7C  C0 E4 00 04 */	lfs f7, 4(r4)
/* 80408B80  FC 04 38 40 */	fcmpo cr0, f4, f7
/* 80408B84  40 81 00 0C */	ble lbl_80408B90
/* 80408B88  FC 80 38 90 */	fmr f4, f7
/* 80408B8C  48 00 00 10 */	b lbl_80408B9C
lbl_80408B90:
/* 80408B90  FC 03 38 40 */	fcmpo cr0, f3, f7
/* 80408B94  40 80 00 08 */	bge lbl_80408B9C
/* 80408B98  FC 60 38 90 */	fmr f3, f7
lbl_80408B9C:
/* 80408B9C  C0 E4 00 08 */	lfs f7, 8(r4)
/* 80408BA0  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 80408BA4  40 81 00 0C */	ble lbl_80408BB0
/* 80408BA8  FC C0 38 90 */	fmr f6, f7
/* 80408BAC  48 00 00 10 */	b lbl_80408BBC
lbl_80408BB0:
/* 80408BB0  FC 05 38 40 */	fcmpo cr0, f5, f7
/* 80408BB4  40 80 00 08 */	bge lbl_80408BBC
/* 80408BB8  FC A0 38 90 */	fmr f5, f7
lbl_80408BBC:
/* 80408BBC  C0 E5 00 00 */	lfs f7, 0(r5)
/* 80408BC0  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80408BC4  40 81 00 0C */	ble lbl_80408BD0
/* 80408BC8  FC 00 38 90 */	fmr f0, f7
/* 80408BCC  48 00 00 10 */	b lbl_80408BDC
lbl_80408BD0:
/* 80408BD0  FC 02 38 40 */	fcmpo cr0, f2, f7
/* 80408BD4  40 80 00 08 */	bge lbl_80408BDC
/* 80408BD8  FC 40 38 90 */	fmr f2, f7
lbl_80408BDC:
/* 80408BDC  C0 E5 00 04 */	lfs f7, 4(r5)
/* 80408BE0  FC 04 38 40 */	fcmpo cr0, f4, f7
/* 80408BE4  40 81 00 0C */	ble lbl_80408BF0
/* 80408BE8  FC 80 38 90 */	fmr f4, f7
/* 80408BEC  48 00 00 10 */	b lbl_80408BFC
lbl_80408BF0:
/* 80408BF0  FC 03 38 40 */	fcmpo cr0, f3, f7
/* 80408BF4  40 80 00 08 */	bge lbl_80408BFC
/* 80408BF8  FC 60 38 90 */	fmr f3, f7
lbl_80408BFC:
/* 80408BFC  C0 E5 00 08 */	lfs f7, 8(r5)
/* 80408C00  FC 06 38 40 */	fcmpo cr0, f6, f7
/* 80408C04  40 81 00 0C */	ble lbl_80408C10
/* 80408C08  FC C0 38 90 */	fmr f6, f7
/* 80408C0C  48 00 00 10 */	b lbl_80408C1C
lbl_80408C10:
/* 80408C10  FC 05 38 40 */	fcmpo cr0, f5, f7
/* 80408C14  40 80 00 08 */	bge lbl_80408C1C
/* 80408C18  FC A0 38 90 */	fmr f5, f7
lbl_80408C1C:
/* 80408C1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80408C20  C0 E6 00 00 */	lfs f7, 0(r6)
/* 80408C24  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80408C28  4C 40 13 82 */	cror 2, 0, 2
/* 80408C2C  40 82 00 64 */	bne lbl_80408C90
/* 80408C30  EC 02 08 2A */	fadds f0, f2, f1
/* 80408C34  FC 00 38 40 */	fcmpo cr0, f0, f7
/* 80408C38  4C 41 13 82 */	cror 2, 1, 2
/* 80408C3C  40 82 00 54 */	bne lbl_80408C90
/* 80408C40  EC 04 08 28 */	fsubs f0, f4, f1
/* 80408C44  C0 46 00 04 */	lfs f2, 4(r6)
/* 80408C48  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80408C4C  4C 40 13 82 */	cror 2, 0, 2
/* 80408C50  40 82 00 40 */	bne lbl_80408C90
/* 80408C54  EC 03 08 2A */	fadds f0, f3, f1
/* 80408C58  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80408C5C  4C 41 13 82 */	cror 2, 1, 2
/* 80408C60  40 82 00 30 */	bne lbl_80408C90
/* 80408C64  EC 06 08 28 */	fsubs f0, f6, f1
/* 80408C68  C0 46 00 08 */	lfs f2, 8(r6)
/* 80408C6C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80408C70  4C 40 13 82 */	cror 2, 0, 2
/* 80408C74  40 82 00 1C */	bne lbl_80408C90
/* 80408C78  EC 05 08 2A */	fadds f0, f5, f1
/* 80408C7C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80408C80  4C 41 13 82 */	cror 2, 1, 2
/* 80408C84  40 82 00 0C */	bne lbl_80408C90
/* 80408C88  38 60 00 01 */	li r3, 1
/* 80408C8C  4E 80 00 20 */	blr 
lbl_80408C90:
/* 80408C90  38 60 00 00 */	li r3, 0
/* 80408C94  4E 80 00 20 */	blr 
