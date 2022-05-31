lbl_804D981C:
/* 804D981C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9820  7C 08 02 A6 */	mflr r0
/* 804D9824  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9828  39 61 00 20 */	addi r11, r1, 0x20
/* 804D982C  4B BC 16 A9 */	bl func_8009AED4
/* 804D9830  7C 9F 23 79 */	or. r31, r4, r4
/* 804D9834  7C 7D 1B 78 */	mr r29, r3
/* 804D9838  41 82 01 28 */	beq lbl_804D9960
/* 804D983C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D9840  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804D9844  3C 84 00 03 */	addis r4, r4, 3
/* 804D9848  88 04 85 BE */	lbz r0, -0x7a42(r4)
/* 804D984C  7C 00 07 75 */	extsb. r0, r0
/* 804D9850  41 82 00 F0 */	beq lbl_804D9940
/* 804D9854  4B EF FD ED */	bl get_player_actor_withoutCheck
/* 804D9858  7C 7E 1B 78 */	mr r30, r3
/* 804D985C  7F A3 EB 78 */	mr r3, r29
/* 804D9860  4B EF FE 11 */	bl mPlib_get_player_actor_main_index
/* 804D9864  2C 03 00 0F */	cmpwi r3, 0xf
/* 804D9868  40 82 00 24 */	bne lbl_804D988C
/* 804D986C  80 9E 0D 28 */	lwz r4, 0xd28(r30)
/* 804D9870  38 60 00 01 */	li r3, 1
/* 804D9874  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 804D9878  90 9F 00 00 */	stw r4, 0(r31)
/* 804D987C  90 1F 00 04 */	stw r0, 4(r31)
/* 804D9880  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 804D9884  90 1F 00 08 */	stw r0, 8(r31)
/* 804D9888  48 00 00 DC */	b lbl_804D9964
lbl_804D988C:
/* 804D988C  7F A3 EB 78 */	mr r3, r29
/* 804D9890  4B EF FD E1 */	bl mPlib_get_player_actor_main_index
/* 804D9894  2C 03 00 50 */	cmpwi r3, 0x50
/* 804D9898  40 82 00 24 */	bne lbl_804D98BC
/* 804D989C  80 9E 0D 28 */	lwz r4, 0xd28(r30)
/* 804D98A0  38 60 00 01 */	li r3, 1
/* 804D98A4  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 804D98A8  90 9F 00 00 */	stw r4, 0(r31)
/* 804D98AC  90 1F 00 04 */	stw r0, 4(r31)
/* 804D98B0  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 804D98B4  90 1F 00 08 */	stw r0, 8(r31)
/* 804D98B8  48 00 00 AC */	b lbl_804D9964
lbl_804D98BC:
/* 804D98BC  7F A3 EB 78 */	mr r3, r29
/* 804D98C0  4B EF FD B1 */	bl mPlib_get_player_actor_main_index
/* 804D98C4  2C 03 00 68 */	cmpwi r3, 0x68
/* 804D98C8  40 82 00 24 */	bne lbl_804D98EC
/* 804D98CC  80 9E 0D 28 */	lwz r4, 0xd28(r30)
/* 804D98D0  38 60 00 01 */	li r3, 1
/* 804D98D4  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 804D98D8  90 9F 00 00 */	stw r4, 0(r31)
/* 804D98DC  90 1F 00 04 */	stw r0, 4(r31)
/* 804D98E0  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 804D98E4  90 1F 00 08 */	stw r0, 8(r31)
/* 804D98E8  48 00 00 7C */	b lbl_804D9964
lbl_804D98EC:
/* 804D98EC  7F A3 EB 78 */	mr r3, r29
/* 804D98F0  4B EF FD 81 */	bl mPlib_get_player_actor_main_index
/* 804D98F4  2C 03 00 73 */	cmpwi r3, 0x73
/* 804D98F8  40 82 00 24 */	bne lbl_804D991C
/* 804D98FC  80 9E 0D 28 */	lwz r4, 0xd28(r30)
/* 804D9900  38 60 00 01 */	li r3, 1
/* 804D9904  80 1E 0D 2C */	lwz r0, 0xd2c(r30)
/* 804D9908  90 9F 00 00 */	stw r4, 0(r31)
/* 804D990C  90 1F 00 04 */	stw r0, 4(r31)
/* 804D9910  80 1E 0D 30 */	lwz r0, 0xd30(r30)
/* 804D9914  90 1F 00 08 */	stw r0, 8(r31)
/* 804D9918  48 00 00 4C */	b lbl_804D9964
lbl_804D991C:
/* 804D991C  7F A3 EB 78 */	mr r3, r29
/* 804D9920  4B EF FD 21 */	bl get_player_actor_withoutCheck
/* 804D9924  80 83 00 28 */	lwz r4, 0x28(r3)
/* 804D9928  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804D992C  90 9F 00 00 */	stw r4, 0(r31)
/* 804D9930  90 1F 00 04 */	stw r0, 4(r31)
/* 804D9934  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804D9938  90 1F 00 08 */	stw r0, 8(r31)
/* 804D993C  48 00 00 24 */	b lbl_804D9960
lbl_804D9940:
/* 804D9940  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804D9944  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804D9948  80 64 00 00 */	lwz r3, 0(r4)
/* 804D994C  80 04 00 04 */	lwz r0, 4(r4)
/* 804D9950  90 7F 00 00 */	stw r3, 0(r31)
/* 804D9954  90 1F 00 04 */	stw r0, 4(r31)
/* 804D9958  80 04 00 08 */	lwz r0, 8(r4)
/* 804D995C  90 1F 00 08 */	stw r0, 8(r31)
lbl_804D9960:
/* 804D9960  38 60 00 00 */	li r3, 0
lbl_804D9964:
/* 804D9964  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9968  4B BC 15 B9 */	bl func_8009AF20
/* 804D996C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9970  7C 08 03 A6 */	mtlr r0
/* 804D9974  38 21 00 20 */	addi r1, r1, 0x20
/* 804D9978  4E 80 00 20 */	blr 
