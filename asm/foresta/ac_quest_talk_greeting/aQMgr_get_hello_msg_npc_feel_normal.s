lbl_80488854:
/* 80488854  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488858  7C 08 02 A6 */	mflr r0
/* 8048885C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488860  39 61 00 20 */	addi r11, r1, 0x20
/* 80488864  4B C1 26 65 */	bl func_8009AEC8
/* 80488868  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8048886C  7C 9F 23 78 */	mr r31, r4
/* 80488870  38 87 85 38 */	addi r4, r7, common_data@l /* 0x81138538@l */
/* 80488874  7C BA 2B 78 */	mr r26, r5
/* 80488878  3F C4 00 02 */	addis r30, r4, 2
/* 8048887C  7C DB 33 78 */	mr r27, r6
/* 80488880  AB BE 66 6C */	lha r29, 0x666c(r30)
/* 80488884  4B F4 3F 05 */	bl mNpc_SearchAnimalPersonalID
/* 80488888  7F E4 FB 78 */	mr r4, r31
/* 8048888C  7C 7C 1B 78 */	mr r28, r3
/* 80488890  4B F4 AD 99 */	bl mNpc_CheckOverImpatient
/* 80488894  2C 03 00 01 */	cmpwi r3, 1
/* 80488898  40 82 00 30 */	bne lbl_804888C8
/* 8048889C  7F 83 E3 78 */	mr r3, r28
/* 804888A0  7F E4 FB 78 */	mr r4, r31
/* 804888A4  4B F4 AD D5 */	bl mNpc_GetOverImpatient
/* 804888A8  1C 83 00 03 */	mulli r4, r3, 3
/* 804888AC  38 60 00 03 */	li r3, 3
/* 804888B0  1C 1F 00 06 */	mulli r0, r31, 6
/* 804888B4  3B C4 0A 50 */	addi r30, r4, 0xa50
/* 804888B8  7F C0 F2 14 */	add r30, r0, r30
/* 804888BC  4B F5 BB 15 */	bl mQst_GetRandom
/* 804888C0  7F DE 1A 14 */	add r30, r30, r3
/* 804888C4  48 00 00 C8 */	b lbl_8048898C
lbl_804888C8:
/* 804888C8  2C 1A 00 02 */	cmpwi r26, 2
/* 804888CC  40 82 00 30 */	bne lbl_804888FC
/* 804888D0  38 60 00 16 */	li r3, 0x16
/* 804888D4  38 80 00 01 */	li r4, 1
/* 804888D8  4B F1 52 29 */	bl mEv_check_status
/* 804888DC  2C 03 00 01 */	cmpwi r3, 1
/* 804888E0  40 82 00 1C */	bne lbl_804888FC
/* 804888E4  7F E4 FB 78 */	mr r4, r31
/* 804888E8  38 60 3B C1 */	li r3, 0x3bc1
/* 804888EC  38 A0 00 03 */	li r5, 3
/* 804888F0  4B FF FB 65 */	bl aQMgr_get_random_msg_no
/* 804888F4  7C 7E 1B 78 */	mr r30, r3
/* 804888F8  48 00 00 94 */	b lbl_8048898C
lbl_804888FC:
/* 804888FC  2C 1A 00 02 */	cmpwi r26, 2
/* 80488900  40 82 00 30 */	bne lbl_80488930
/* 80488904  38 60 00 11 */	li r3, 0x11
/* 80488908  38 80 00 01 */	li r4, 1
/* 8048890C  4B F1 51 F5 */	bl mEv_check_status
/* 80488910  2C 03 00 01 */	cmpwi r3, 1
/* 80488914  40 82 00 1C */	bne lbl_80488930
/* 80488918  7F E4 FB 78 */	mr r4, r31
/* 8048891C  38 60 3B 84 */	li r3, 0x3b84
/* 80488920  38 A0 00 03 */	li r5, 3
/* 80488924  4B FF FB 31 */	bl aQMgr_get_random_msg_no
/* 80488928  7C 7E 1B 78 */	mr r30, r3
/* 8048892C  48 00 00 60 */	b lbl_8048898C
lbl_80488930:
/* 80488930  4B F1 C3 9D */	bl mFI_GetFieldId
/* 80488934  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 80488938  28 00 30 00 */	cmplwi r0, 0x3000
/* 8048893C  41 82 00 0C */	beq lbl_80488948
/* 80488940  28 00 40 00 */	cmplwi r0, 0x4000
/* 80488944  40 82 00 18 */	bne lbl_8048895C
lbl_80488948:
/* 80488948  3C 60 80 69 */	lis r3, l_indoor_hello_msg_tbl@ha /* 0x8068ADE0@ha */
/* 8048894C  57 40 10 3A */	slwi r0, r26, 2
/* 80488950  38 63 AD E0 */	addi r3, r3, l_indoor_hello_msg_tbl@l /* 0x8068ADE0@l */
/* 80488954  7C 83 00 2E */	lwzx r4, r3, r0
/* 80488958  48 00 00 1C */	b lbl_80488974
lbl_8048895C:
/* 8048895C  3C 60 80 69 */	lis r3, hello_msg_tbl@ha /* 0x8068AEE0@ha */
/* 80488960  57 A4 10 3A */	slwi r4, r29, 2
/* 80488964  38 63 AE E0 */	addi r3, r3, hello_msg_tbl@l /* 0x8068AEE0@l */
/* 80488968  57 40 10 3A */	slwi r0, r26, 2
/* 8048896C  7C 63 20 2E */	lwzx r3, r3, r4
/* 80488970  7C 83 00 2E */	lwzx r4, r3, r0
lbl_80488974:
/* 80488974  88 DE 61 22 */	lbz r6, 0x6122(r30)
/* 80488978  7F 63 DB 78 */	mr r3, r27
/* 8048897C  7F E5 FB 78 */	mr r5, r31
/* 80488980  38 E0 00 03 */	li r7, 3
/* 80488984  4B FF FA 6D */	bl aQMgr_actor_get_my_hello_msg_com
/* 80488988  7C 7E 1B 78 */	mr r30, r3
lbl_8048898C:
/* 8048898C  7F C3 F3 78 */	mr r3, r30
/* 80488990  39 61 00 20 */	addi r11, r1, 0x20
/* 80488994  4B C1 25 81 */	bl func_8009AF14
/* 80488998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048899C  7C 08 03 A6 */	mtlr r0
/* 804889A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804889A4  4E 80 00 20 */	blr 
