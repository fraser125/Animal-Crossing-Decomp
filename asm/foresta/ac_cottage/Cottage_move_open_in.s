lbl_80416E08:
/* 80416E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80416E0C  7C 08 02 A6 */	mflr r0
/* 80416E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80416E14  39 61 00 20 */	addi r11, r1, 0x20
/* 80416E18  4B C8 40 BD */	bl func_8009AED4
/* 80416E1C  7C 7D 1B 78 */	mr r29, r3
/* 80416E20  7C 9E 23 78 */	mr r30, r4
/* 80416E24  4B FF F1 6D */	bl Cottage_set_doorSE
/* 80416E28  38 7D 01 78 */	addi r3, r29, 0x178
/* 80416E2C  4B F5 A1 E9 */	bl cKF_SkeletonInfo_R_play
/* 80416E30  2C 03 00 01 */	cmpwi r3, 1
/* 80416E34  40 82 00 64 */	bne lbl_80416E98
/* 80416E38  80 1D 02 BC */	lwz r0, 0x2bc(r29)
/* 80416E3C  2C 00 00 01 */	cmpwi r0, 1
/* 80416E40  40 82 00 50 */	bne lbl_80416E90
/* 80416E44  7F A3 EB 78 */	mr r3, r29
/* 80416E48  4B FF EF D5 */	bl func_80415E1C
/* 80416E4C  7C 7F 1B 78 */	mr r31, r3
/* 80416E50  7F A3 EB 78 */	mr r3, r29
/* 80416E54  81 9F 00 20 */	lwz r12, 0x20(r31)
/* 80416E58  7F C4 F3 78 */	mr r4, r30
/* 80416E5C  7D 89 03 A6 */	mtctr r12
/* 80416E60  4E 80 04 21 */	bctrl 
/* 80416E64  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80416E68  7F C3 F3 78 */	mr r3, r30
/* 80416E6C  38 A0 00 00 */	li r5, 0
/* 80416E70  4B FD A3 39 */	bl goto_other_scene
/* 80416E74  38 00 00 09 */	li r0, 9
/* 80416E78  7F A3 EB 78 */	mr r3, r29
/* 80416E7C  98 1E 20 D0 */	stb r0, 0x20d0(r30)
/* 80416E80  4B F8 34 21 */	bl mDemo_End
/* 80416E84  7F A3 EB 78 */	mr r3, r29
/* 80416E88  48 00 01 85 */	bl Cottage_move_next_init
/* 80416E8C  48 00 00 0C */	b lbl_80416E98
lbl_80416E90:
/* 80416E90  7F A3 EB 78 */	mr r3, r29
/* 80416E94  4B FF FC D1 */	bl Cottage_move_closed_init
lbl_80416E98:
/* 80416E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80416E9C  4B C8 40 85 */	bl func_8009AF20
/* 80416EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80416EA4  7C 08 03 A6 */	mtlr r0
/* 80416EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80416EAC  4E 80 00 20 */	blr 
