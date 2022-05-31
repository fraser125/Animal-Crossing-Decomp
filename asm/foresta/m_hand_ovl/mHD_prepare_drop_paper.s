lbl_805DDE30:
/* 805DDE30  A0 C3 02 34 */	lhz r6, 0x234(r3)
/* 805DDE34  81 03 03 60 */	lwz r8, 0x360(r3)
/* 805DDE38  28 06 20 00 */	cmplwi r6, 0x2000
/* 805DDE3C  4D 80 00 20 */	bltlr 
/* 805DDE40  28 06 20 FF */	cmplwi r6, 0x20ff
/* 805DDE44  4D 81 00 20 */	bgtlr 
/* 805DDE48  A0 84 00 00 */	lhz r4, 0(r4)
/* 805DDE4C  28 04 20 00 */	cmplwi r4, 0x2000
/* 805DDE50  4D 80 00 20 */	bltlr 
/* 805DDE54  28 04 20 FF */	cmplwi r4, 0x20ff
/* 805DDE58  4D 81 00 20 */	bgtlr 
/* 805DDE5C  39 46 E0 00 */	addi r10, r6, -8192
/* 805DDE60  39 64 E0 00 */	addi r11, r4, -8192
/* 805DDE64  55 46 D0 0A */	slwi r6, r10, 0x1a
/* 805DDE68  55 47 0F FE */	srwi r7, r10, 0x1f
/* 805DDE6C  55 60 D0 0A */	slwi r0, r11, 0x1a
/* 805DDE70  55 64 0F FE */	srwi r4, r11, 0x1f
/* 805DDE74  7C C7 30 50 */	subf r6, r7, r6
/* 805DDE78  7C 04 00 50 */	subf r0, r4, r0
/* 805DDE7C  54 C6 30 3E */	rotlwi r6, r6, 6
/* 805DDE80  54 00 30 3E */	rotlwi r0, r0, 6
/* 805DDE84  7D 26 3A 14 */	add r9, r6, r7
/* 805DDE88  7C 00 22 14 */	add r0, r0, r4
/* 805DDE8C  7C 09 00 00 */	cmpw r9, r0
/* 805DDE90  4C 82 00 20 */	bnelr 
/* 805DDE94  28 08 00 00 */	cmplwi r8, 0
/* 805DDE98  4C 82 00 20 */	bnelr 
/* 805DDE9C  4C 82 00 20 */	bnelr 
/* 805DDEA0  7D 40 36 70 */	srawi r0, r10, 6
/* 805DDEA4  7C 80 01 94 */	addze r4, r0
/* 805DDEA8  38 C4 00 01 */	addi r6, r4, 1
/* 805DDEAC  7D 60 36 70 */	srawi r0, r11, 6
/* 805DDEB0  2C 06 00 04 */	cmpwi r6, 4
/* 805DDEB4  7C 80 01 94 */	addze r4, r0
/* 805DDEB8  38 04 00 01 */	addi r0, r4, 1
/* 805DDEBC  4D 82 00 20 */	beqlr 
/* 805DDEC0  2C 00 00 04 */	cmpwi r0, 4
/* 805DDEC4  4D 82 00 20 */	beqlr 
/* 805DDEC8  7C C6 02 14 */	add r6, r6, r0
/* 805DDECC  34 E6 FF FC */	addic. r7, r6, -4
/* 805DDED0  40 81 00 3C */	ble lbl_805DDF0C
/* 805DDED4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DDED8  38 C7 FF FF */	addi r6, r7, -1
/* 805DDEDC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805DDEE0  38 09 20 C0 */	addi r0, r9, 0x20c0
/* 805DDEE4  3C 84 00 02 */	addis r4, r4, 2
/* 805DDEE8  54 C7 30 32 */	slwi r7, r6, 6
/* 805DDEEC  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 805DDEF0  54 A4 08 3C */	slwi r4, r5, 1
/* 805DDEF4  7C E9 3A 14 */	add r7, r9, r7
/* 805DDEF8  38 A7 20 00 */	addi r5, r7, 0x2000
/* 805DDEFC  7C 86 22 14 */	add r4, r6, r4
/* 805DDF00  B0 A4 00 68 */	sth r5, 0x68(r4)
/* 805DDF04  B0 03 02 34 */	sth r0, 0x234(r3)
/* 805DDF08  4E 80 00 20 */	blr 
lbl_805DDF0C:
/* 805DDF0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DDF10  38 06 FF FF */	addi r0, r6, -1
/* 805DDF14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805DDF18  54 A5 08 3C */	slwi r5, r5, 1
/* 805DDF1C  3C 84 00 02 */	addis r4, r4, 2
/* 805DDF20  54 00 30 32 */	slwi r0, r0, 6
/* 805DDF24  80 C4 61 3C */	lwz r6, 0x613c(r4)
/* 805DDF28  7C 89 02 14 */	add r4, r9, r0
/* 805DDF2C  38 04 20 00 */	addi r0, r4, 0x2000
/* 805DDF30  38 E0 00 00 */	li r7, 0
/* 805DDF34  7C 86 2A 14 */	add r4, r6, r5
/* 805DDF38  B0 E4 00 68 */	sth r7, 0x68(r4)
/* 805DDF3C  B0 03 02 34 */	sth r0, 0x234(r3)
/* 805DDF40  4E 80 00 20 */	blr 
