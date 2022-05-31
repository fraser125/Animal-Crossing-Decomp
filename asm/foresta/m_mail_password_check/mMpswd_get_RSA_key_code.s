lbl_803BD744:
/* 803BD744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BD748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BD74C  8B E7 00 0F */	lbz r31, 0xf(r7)
/* 803BD750  57 E9 07 BE */	clrlwi r9, r31, 0x1e
/* 803BD754  57 EB F7 BE */	rlwinm r11, r31, 0x1e, 0x1e, 0x1f
/* 803BD758  2C 09 00 03 */	cmpwi r9, 3
/* 803BD75C  40 82 00 18 */	bne lbl_803BD774
/* 803BD760  7D 20 5A 78 */	xor r0, r9, r11
/* 803BD764  54 09 07 BE */	clrlwi r9, r0, 0x1e
/* 803BD768  2C 09 00 03 */	cmpwi r9, 3
/* 803BD76C  40 82 00 08 */	bne lbl_803BD774
/* 803BD770  39 20 00 00 */	li r9, 0
lbl_803BD774:
/* 803BD774  2C 0B 00 03 */	cmpwi r11, 3
/* 803BD778  40 82 00 18 */	bne lbl_803BD790
/* 803BD77C  38 09 00 01 */	addi r0, r9, 1
/* 803BD780  54 0B 07 BE */	clrlwi r11, r0, 0x1e
/* 803BD784  2C 0B 00 03 */	cmpwi r11, 3
/* 803BD788  40 82 00 08 */	bne lbl_803BD790
/* 803BD78C  39 60 00 01 */	li r11, 1
lbl_803BD790:
/* 803BD790  7C 09 58 00 */	cmpw r9, r11
/* 803BD794  40 82 00 18 */	bne lbl_803BD7AC
/* 803BD798  38 09 00 01 */	addi r0, r9, 1
/* 803BD79C  54 0B 07 BE */	clrlwi r11, r0, 0x1e
/* 803BD7A0  2C 0B 00 03 */	cmpwi r11, 3
/* 803BD7A4  40 82 00 08 */	bne lbl_803BD7AC
/* 803BD7A8  39 60 00 01 */	li r11, 1
lbl_803BD7AC:
/* 803BD7AC  3D 40 80 65 */	lis r10, mMpswd_prime_number@ha /* 0x80656600@ha */
/* 803BD7B0  55 2C 10 3A */	slwi r12, r9, 2
/* 803BD7B4  55 69 10 3A */	slwi r9, r11, 2
/* 803BD7B8  3D 00 80 65 */	lis r8, mMpswd_select_idx_table@ha /* 0x80656FEC@ha */
/* 803BD7BC  39 6A 66 00 */	addi r11, r10, mMpswd_prime_number@l /* 0x80656600@l */
/* 803BD7C0  57 E0 F6 BA */	rlwinm r0, r31, 0x1e, 0x1a, 0x1d
/* 803BD7C4  7D 4B 60 2E */	lwzx r10, r11, r12
/* 803BD7C8  39 08 6F EC */	addi r8, r8, mMpswd_select_idx_table@l /* 0x80656FEC@l */
/* 803BD7CC  91 43 00 00 */	stw r10, 0(r3)
/* 803BD7D0  7C 6B 48 2E */	lwzx r3, r11, r9
/* 803BD7D4  90 64 00 00 */	stw r3, 0(r4)
/* 803BD7D8  7C 08 00 2E */	lwzx r0, r8, r0
/* 803BD7DC  90 06 00 00 */	stw r0, 0(r6)
/* 803BD7E0  88 07 00 05 */	lbz r0, 5(r7)
/* 803BD7E4  54 00 10 3A */	slwi r0, r0, 2
/* 803BD7E8  7C 0B 00 2E */	lwzx r0, r11, r0
/* 803BD7EC  90 05 00 00 */	stw r0, 0(r5)
/* 803BD7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BD7F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD7F8  4E 80 00 20 */	blr 
