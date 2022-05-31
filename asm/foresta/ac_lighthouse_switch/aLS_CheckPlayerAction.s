lbl_8042CF40:
/* 8042CF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042CF44  7C 08 02 A6 */	mflr r0
/* 8042CF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042CF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042CF50  4B C6 DF 85 */	bl func_8009AED4
/* 8042CF54  7C 9E 23 78 */	mr r30, r4
/* 8042CF58  7C 7D 1B 78 */	mr r29, r3
/* 8042CF5C  7F C3 F3 78 */	mr r3, r30
/* 8042CF60  4B FA C6 E1 */	bl get_player_actor_withoutCheck
/* 8042CF64  7C 7F 1B 78 */	mr r31, r3
/* 8042CF68  7F C3 F3 78 */	mr r3, r30
/* 8042CF6C  4B FB 16 A5 */	bl mPlib_check_player_actor_start_switch_on_lighthouse
/* 8042CF70  2C 03 00 00 */	cmpwi r3, 0
/* 8042CF74  41 82 00 48 */	beq lbl_8042CFBC
/* 8042CF78  A8 1D 0B 28 */	lha r0, 0xb28(r29)
/* 8042CF7C  2C 00 00 01 */	cmpwi r0, 1
/* 8042CF80  40 82 00 3C */	bne lbl_8042CFBC
/* 8042CF84  38 00 00 00 */	li r0, 0
/* 8042CF88  B0 1D 0B 28 */	sth r0, 0xb28(r29)
/* 8042CF8C  A8 1D 01 84 */	lha r0, 0x184(r29)
/* 8042CF90  2C 00 00 00 */	cmpwi r0, 0
/* 8042CF94  40 82 00 18 */	bne lbl_8042CFAC
/* 8042CF98  7F A3 EB 78 */	mr r3, r29
/* 8042CF9C  7F C4 F3 78 */	mr r4, r30
/* 8042CFA0  4B FF F0 F9 */	bl aLS_RequestSwitchON
/* 8042CFA4  4B FC 0C D9 */	bl mSC_LightHouse_Switch_On
/* 8042CFA8  48 00 00 70 */	b lbl_8042D018
lbl_8042CFAC:
/* 8042CFAC  7F A3 EB 78 */	mr r3, r29
/* 8042CFB0  7F C4 F3 78 */	mr r4, r30
/* 8042CFB4  4B FF F0 35 */	bl aLS_RequestPoleToStop
/* 8042CFB8  48 00 00 60 */	b lbl_8042D018
lbl_8042CFBC:
/* 8042CFBC  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8042CFC0  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8042CFC4  4B F6 8F 4D */	bl chkTrigger
/* 8042CFC8  2C 03 00 00 */	cmpwi r3, 0
/* 8042CFCC  41 82 00 4C */	beq lbl_8042D018
/* 8042CFD0  4B FF EF D9 */	bl aLS_GetNiceStatus
/* 8042CFD4  2C 03 00 02 */	cmpwi r3, 2
/* 8042CFD8  40 82 00 40 */	bne lbl_8042D018
/* 8042CFDC  A8 1D 01 84 */	lha r0, 0x184(r29)
/* 8042CFE0  2C 00 00 00 */	cmpwi r0, 0
/* 8042CFE4  40 82 00 34 */	bne lbl_8042D018
/* 8042CFE8  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 8042CFEC  38 7F 00 28 */	addi r3, r31, 0x28
/* 8042CFF0  4B FF FE 59 */	bl aLS_CheckPlayerSwitchPositionAngle
/* 8042CFF4  2C 03 00 00 */	cmpwi r3, 0
/* 8042CFF8  41 82 00 20 */	beq lbl_8042D018
/* 8042CFFC  3C 80 80 68 */	lis r4, nice_pos@ha /* 0x80684944@ha */
/* 8042D000  7F C3 F3 78 */	mr r3, r30
/* 8042D004  38 84 49 44 */	addi r4, r4, nice_pos@l /* 0x80684944@l */
/* 8042D008  38 A0 60 00 */	li r5, 0x6000
/* 8042D00C  4B FA DA 8D */	bl mPlib_request_main_switch_on_lighthouse_type1
/* 8042D010  38 00 00 01 */	li r0, 1
/* 8042D014  B0 1D 0B 28 */	sth r0, 0xb28(r29)
lbl_8042D018:
/* 8042D018  39 61 00 20 */	addi r11, r1, 0x20
/* 8042D01C  4B C6 DF 05 */	bl func_8009AF20
/* 8042D020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042D024  7C 08 03 A6 */	mtlr r0
/* 8042D028  38 21 00 20 */	addi r1, r1, 0x20
/* 8042D02C  4E 80 00 20 */	blr 
