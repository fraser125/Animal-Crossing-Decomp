lbl_803BB9F8:
/* 803BB9F8  81 24 02 D0 */	lwz r9, 0x2d0(r4)
/* 803BB9FC  3C C0 DB 02 */	lis r6, 0xdb02
/* 803BBA00  81 44 02 E0 */	lwz r10, 0x2e0(r4)
/* 803BBA04  38 E3 00 10 */	addi r7, r3, 0x10
/* 803BBA08  39 00 00 00 */	li r8, 0
/* 803BBA0C  38 A0 00 00 */	li r5, 0
/* 803BBA10  90 C9 00 00 */	stw r6, 0(r9)
/* 803BBA14  88 03 00 00 */	lbz r0, 0(r3)
/* 803BBA18  1C 00 00 18 */	mulli r0, r0, 0x18
/* 803BBA1C  90 09 00 04 */	stw r0, 4(r9)
/* 803BBA20  39 29 00 08 */	addi r9, r9, 8
/* 803BBA24  90 CA 00 00 */	stw r6, 0(r10)
/* 803BBA28  88 03 00 00 */	lbz r0, 0(r3)
/* 803BBA2C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 803BBA30  90 0A 00 04 */	stw r0, 4(r10)
/* 803BBA34  39 4A 00 08 */	addi r10, r10, 8
/* 803BBA38  48 00 00 40 */	b lbl_803BBA78
lbl_803BBA3C:
/* 803BBA3C  38 05 00 30 */	addi r0, r5, 0x30
/* 803BBA40  39 08 00 01 */	addi r8, r8, 1
/* 803BBA44  7C 00 1E 70 */	srawi r0, r0, 3
/* 803BBA48  38 A5 00 18 */	addi r5, r5, 0x18
/* 803BBA4C  7C 00 01 94 */	addze r0, r0
/* 803BBA50  54 00 44 2E */	rlwinm r0, r0, 8, 0x10, 0x17
/* 803BBA54  64 00 DC 08 */	oris r0, r0, 0xdc08
/* 803BBA58  60 00 00 0A */	ori r0, r0, 0xa
/* 803BBA5C  90 09 00 00 */	stw r0, 0(r9)
/* 803BBA60  90 E9 00 04 */	stw r7, 4(r9)
/* 803BBA64  39 29 00 08 */	addi r9, r9, 8
/* 803BBA68  90 0A 00 00 */	stw r0, 0(r10)
/* 803BBA6C  90 EA 00 04 */	stw r7, 4(r10)
/* 803BBA70  38 E7 00 10 */	addi r7, r7, 0x10
/* 803BBA74  39 4A 00 08 */	addi r10, r10, 8
lbl_803BBA78:
/* 803BBA78  88 03 00 00 */	lbz r0, 0(r3)
/* 803BBA7C  7C 08 00 00 */	cmpw r8, r0
/* 803BBA80  41 80 FF BC */	blt lbl_803BBA3C
/* 803BBA84  38 08 00 01 */	addi r0, r8, 1
/* 803BBA88  7D 26 4B 78 */	mr r6, r9
/* 803BBA8C  1C A0 00 18 */	mulli r5, r0, 0x18
/* 803BBA90  7D 47 53 78 */	mr r7, r10
/* 803BBA94  38 63 00 08 */	addi r3, r3, 8
/* 803BBA98  39 29 00 08 */	addi r9, r9, 8
/* 803BBA9C  38 05 00 18 */	addi r0, r5, 0x18
/* 803BBAA0  39 4A 00 08 */	addi r10, r10, 8
/* 803BBAA4  7C 00 1E 70 */	srawi r0, r0, 3
/* 803BBAA8  7C 00 01 94 */	addze r0, r0
/* 803BBAAC  54 00 44 2E */	rlwinm r0, r0, 8, 0x10, 0x17
/* 803BBAB0  64 00 DC 08 */	oris r0, r0, 0xdc08
/* 803BBAB4  60 00 00 0A */	ori r0, r0, 0xa
/* 803BBAB8  90 06 00 00 */	stw r0, 0(r6)
/* 803BBABC  90 66 00 04 */	stw r3, 4(r6)
/* 803BBAC0  90 07 00 00 */	stw r0, 0(r7)
/* 803BBAC4  90 67 00 04 */	stw r3, 4(r7)
/* 803BBAC8  91 24 02 D0 */	stw r9, 0x2d0(r4)
/* 803BBACC  91 44 02 E0 */	stw r10, 0x2e0(r4)
/* 803BBAD0  4E 80 00 20 */	blr 
