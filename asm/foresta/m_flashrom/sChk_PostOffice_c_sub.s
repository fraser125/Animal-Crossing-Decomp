lbl_803AD738:
/* 803AD738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AD73C  7C 08 02 A6 */	mflr r0
/* 803AD740  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AD744  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD748  4B CE D7 85 */	bl func_8009AECC
/* 803AD74C  7C 7E 1B 78 */	mr r30, r3
/* 803AD750  7C 9F 23 78 */	mr r31, r4
/* 803AD754  A8 63 00 00 */	lha r3, 0(r3)
/* 803AD758  3B 60 00 00 */	li r27, 0
/* 803AD75C  7C 60 07 35 */	extsh. r0, r3
/* 803AD760  41 80 00 0C */	blt lbl_803AD76C
/* 803AD764  2C 03 00 0A */	cmpwi r3, 0xa
/* 803AD768  40 81 00 24 */	ble lbl_803AD78C
lbl_803AD76C:
/* 803AD76C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD770  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD774  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD778  38 80 06 51 */	li r4, 0x651
/* 803AD77C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD780  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD784  4B FF F0 45 */	bl mFRm_set_errInfo
/* 803AD788  3B 60 00 01 */	li r27, 1
lbl_803AD78C:
/* 803AD78C  A8 1E 00 02 */	lha r0, 2(r30)
/* 803AD790  2C 00 00 00 */	cmpwi r0, 0
/* 803AD794  40 80 00 24 */	bge lbl_803AD7B8
/* 803AD798  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD79C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD7A0  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD7A4  38 80 06 60 */	li r4, 0x660
/* 803AD7A8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD7AC  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD7B0  4B FF F0 19 */	bl mFRm_set_errInfo
/* 803AD7B4  3B 60 00 01 */	li r27, 1
lbl_803AD7B8:
/* 803AD7B8  A8 1E 00 04 */	lha r0, 4(r30)
/* 803AD7BC  54 00 04 37 */	rlwinm. r0, r0, 0, 0x10, 0x1b
/* 803AD7C0  41 82 00 24 */	beq lbl_803AD7E4
/* 803AD7C4  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD7C8  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD7CC  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD7D0  38 80 06 6F */	li r4, 0x66f
/* 803AD7D4  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD7D8  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD7DC  4B FF EF ED */	bl mFRm_set_errInfo
/* 803AD7E0  3B 60 00 01 */	li r27, 1
lbl_803AD7E4:
/* 803AD7E4  3B 80 00 00 */	li r28, 0
/* 803AD7E8  3B A0 00 00 */	li r29, 0
lbl_803AD7EC:
/* 803AD7EC  38 7D 00 08 */	addi r3, r29, 8
/* 803AD7F0  38 9F 00 01 */	addi r4, r31, 1
/* 803AD7F4  7C 7E 1A 14 */	add r3, r30, r3
/* 803AD7F8  4B FF F8 C9 */	bl sChk_Mail_c_sub
/* 803AD7FC  3B 9C 00 01 */	addi r28, r28, 1
/* 803AD800  7F 7B 1B 78 */	or r27, r27, r3
/* 803AD804  2C 1C 00 05 */	cmpwi r28, 5
/* 803AD808  3B BD 01 2A */	addi r29, r29, 0x12a
/* 803AD80C  41 80 FF E0 */	blt lbl_803AD7EC
/* 803AD810  38 7E 05 DA */	addi r3, r30, 0x5da
/* 803AD814  38 9F 00 01 */	addi r4, r31, 1
/* 803AD818  4B FF F8 A9 */	bl sChk_Mail_c_sub
/* 803AD81C  7F 7B 1B 78 */	or r27, r27, r3
/* 803AD820  38 7E 07 04 */	addi r3, r30, 0x704
/* 803AD824  38 9F 00 01 */	addi r4, r31, 1
/* 803AD828  4B FF F8 99 */	bl sChk_Mail_c_sub
/* 803AD82C  A8 1E 08 30 */	lha r0, 0x830(r30)
/* 803AD830  7F 7B 1B 78 */	or r27, r27, r3
/* 803AD834  54 00 04 37 */	rlwinm. r0, r0, 0, 0x10, 0x1b
/* 803AD838  41 82 00 24 */	beq lbl_803AD85C
/* 803AD83C  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD840  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD844  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD848  38 80 06 84 */	li r4, 0x684
/* 803AD84C  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD850  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD854  4B FF EF 75 */	bl mFRm_set_errInfo
/* 803AD858  3B 60 00 01 */	li r27, 1
lbl_803AD85C:
/* 803AD85C  A8 1E 08 32 */	lha r0, 0x832(r30)
/* 803AD860  54 00 04 37 */	rlwinm. r0, r0, 0, 0x10, 0x1b
/* 803AD864  41 82 00 24 */	beq lbl_803AD888
/* 803AD868  3C 60 81 16 */	lis r3, l_mfrm_now_color@ha /* 0x81167D14@ha */
/* 803AD86C  3C C0 81 16 */	lis r6, l_mfrm_err_info@ha /* 0x81167D18@ha */
/* 803AD870  38 A3 7D 14 */	addi r5, r3, l_mfrm_now_color@l /* 0x81167D14@l */
/* 803AD874  38 80 06 92 */	li r4, 0x692
/* 803AD878  80 A5 00 00 */	lwz r5, 0(r5)
/* 803AD87C  38 66 7D 18 */	addi r3, r6, l_mfrm_err_info@l /* 0x81167D18@l */
/* 803AD880  4B FF EF 49 */	bl mFRm_set_errInfo
/* 803AD884  3B 60 00 01 */	li r27, 1
lbl_803AD888:
/* 803AD888  38 7E 08 34 */	addi r3, r30, 0x834
/* 803AD88C  4B FF F3 F5 */	bl sChk_OSRTCTime_sub
/* 803AD890  7F 7B 1B 78 */	or r27, r27, r3
/* 803AD894  39 61 00 20 */	addi r11, r1, 0x20
/* 803AD898  7F 63 DB 78 */	mr r3, r27
/* 803AD89C  4B CE D6 7D */	bl func_8009AF18
/* 803AD8A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AD8A4  7C 08 03 A6 */	mtlr r0
/* 803AD8A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803AD8AC  4E 80 00 20 */	blr 
