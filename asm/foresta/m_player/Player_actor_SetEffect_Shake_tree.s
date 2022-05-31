lbl_80500C5C:
/* 80500C5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80500C60  7C 08 02 A6 */	mflr r0
/* 80500C64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80500C68  39 61 00 30 */	addi r11, r1, 0x30
/* 80500C6C  4B B9 A2 5D */	bl func_8009AEC8
/* 80500C70  3C A0 80 64 */	lis r5, lit_1375@ha /* 0x80646A30@ha */
/* 80500C74  7C 7A 1B 78 */	mr r26, r3
/* 80500C78  C0 25 6A 30 */	lfs f1, lit_1375@l(r5)  /* 0x80646A30@l */
/* 80500C7C  7C 9B 23 78 */	mr r27, r4
/* 80500C80  38 7A 01 74 */	addi r3, r26, 0x174
/* 80500C84  4B FD 69 7D */	bl Player_actor_Check_AnimationFrame
/* 80500C88  2C 03 00 00 */	cmpwi r3, 0
/* 80500C8C  41 82 03 B0 */	beq lbl_8050103C
/* 80500C90  3B FA 0D 18 */	addi r31, r26, 0xd18
/* 80500C94  38 00 00 00 */	li r0, 0
/* 80500C98  A3 9A 0D 24 */	lhz r28, 0xd24(r26)
/* 80500C9C  83 DA 0D 28 */	lwz r30, 0xd28(r26)
/* 80500CA0  28 1C 08 01 */	cmplwi r28, 0x801
/* 80500CA4  83 BA 0D 2C */	lwz r29, 0xd2c(r26)
/* 80500CA8  41 82 02 DC */	beq lbl_80500F84
/* 80500CAC  28 1C 08 06 */	cmplwi r28, 0x806
/* 80500CB0  41 82 02 D4 */	beq lbl_80500F84
/* 80500CB4  28 1C 08 0E */	cmplwi r28, 0x80e
/* 80500CB8  41 82 02 CC */	beq lbl_80500F84
/* 80500CBC  28 1C 08 16 */	cmplwi r28, 0x816
/* 80500CC0  41 82 02 C4 */	beq lbl_80500F84
/* 80500CC4  28 1C 08 1E */	cmplwi r28, 0x81e
/* 80500CC8  41 82 02 BC */	beq lbl_80500F84
/* 80500CCC  28 1C 08 26 */	cmplwi r28, 0x826
/* 80500CD0  41 82 02 B4 */	beq lbl_80500F84
/* 80500CD4  28 1C 08 2E */	cmplwi r28, 0x82e
/* 80500CD8  41 82 02 AC */	beq lbl_80500F84
/* 80500CDC  28 1C 08 33 */	cmplwi r28, 0x833
/* 80500CE0  41 82 02 A4 */	beq lbl_80500F84
/* 80500CE4  28 1C 08 38 */	cmplwi r28, 0x838
/* 80500CE8  41 82 02 9C */	beq lbl_80500F84
/* 80500CEC  28 1C 08 2E */	cmplwi r28, 0x82e
/* 80500CF0  41 82 02 94 */	beq lbl_80500F84
/* 80500CF4  28 1C 08 33 */	cmplwi r28, 0x833
/* 80500CF8  41 82 02 8C */	beq lbl_80500F84
/* 80500CFC  28 1C 08 38 */	cmplwi r28, 0x838
/* 80500D00  41 82 02 84 */	beq lbl_80500F84
/* 80500D04  28 1C 08 50 */	cmplwi r28, 0x850
/* 80500D08  41 82 02 7C */	beq lbl_80500F84
/* 80500D0C  28 1C 08 55 */	cmplwi r28, 0x855
/* 80500D10  41 82 02 74 */	beq lbl_80500F84
/* 80500D14  28 1C 08 5E */	cmplwi r28, 0x85e
/* 80500D18  41 82 02 6C */	beq lbl_80500F84
/* 80500D1C  28 1C 08 64 */	cmplwi r28, 0x864
/* 80500D20  41 82 02 64 */	beq lbl_80500F84
/* 80500D24  28 1C 08 02 */	cmplwi r28, 0x802
/* 80500D28  41 82 02 5C */	beq lbl_80500F84
/* 80500D2C  28 1C 08 07 */	cmplwi r28, 0x807
/* 80500D30  41 82 02 54 */	beq lbl_80500F84
/* 80500D34  28 1C 08 0F */	cmplwi r28, 0x80f
/* 80500D38  41 82 02 4C */	beq lbl_80500F84
/* 80500D3C  28 1C 08 17 */	cmplwi r28, 0x817
/* 80500D40  41 82 02 44 */	beq lbl_80500F84
/* 80500D44  28 1C 08 1F */	cmplwi r28, 0x81f
/* 80500D48  41 82 02 3C */	beq lbl_80500F84
/* 80500D4C  28 1C 08 27 */	cmplwi r28, 0x827
/* 80500D50  41 82 02 34 */	beq lbl_80500F84
/* 80500D54  28 1C 08 2F */	cmplwi r28, 0x82f
/* 80500D58  41 82 02 2C */	beq lbl_80500F84
/* 80500D5C  28 1C 08 34 */	cmplwi r28, 0x834
/* 80500D60  41 82 02 24 */	beq lbl_80500F84
/* 80500D64  28 1C 08 39 */	cmplwi r28, 0x839
/* 80500D68  41 82 02 1C */	beq lbl_80500F84
/* 80500D6C  28 1C 08 2F */	cmplwi r28, 0x82f
/* 80500D70  41 82 02 14 */	beq lbl_80500F84
/* 80500D74  28 1C 08 34 */	cmplwi r28, 0x834
/* 80500D78  41 82 02 0C */	beq lbl_80500F84
/* 80500D7C  28 1C 08 39 */	cmplwi r28, 0x839
/* 80500D80  41 82 02 04 */	beq lbl_80500F84
/* 80500D84  28 1C 08 51 */	cmplwi r28, 0x851
/* 80500D88  41 82 01 FC */	beq lbl_80500F84
/* 80500D8C  28 1C 08 56 */	cmplwi r28, 0x856
/* 80500D90  41 82 01 F4 */	beq lbl_80500F84
/* 80500D94  28 1C 08 5F */	cmplwi r28, 0x85f
/* 80500D98  41 82 01 EC */	beq lbl_80500F84
/* 80500D9C  28 1C 08 65 */	cmplwi r28, 0x865
/* 80500DA0  41 82 01 E4 */	beq lbl_80500F84
/* 80500DA4  28 1C 08 03 */	cmplwi r28, 0x803
/* 80500DA8  41 82 01 DC */	beq lbl_80500F84
/* 80500DAC  28 1C 08 08 */	cmplwi r28, 0x808
/* 80500DB0  41 82 01 D4 */	beq lbl_80500F84
/* 80500DB4  28 1C 08 10 */	cmplwi r28, 0x810
/* 80500DB8  41 82 01 CC */	beq lbl_80500F84
/* 80500DBC  28 1C 08 18 */	cmplwi r28, 0x818
/* 80500DC0  41 82 01 C4 */	beq lbl_80500F84
/* 80500DC4  28 1C 08 20 */	cmplwi r28, 0x820
/* 80500DC8  41 82 01 BC */	beq lbl_80500F84
/* 80500DCC  28 1C 08 28 */	cmplwi r28, 0x828
/* 80500DD0  41 82 01 B4 */	beq lbl_80500F84
/* 80500DD4  28 1C 08 30 */	cmplwi r28, 0x830
/* 80500DD8  41 82 01 AC */	beq lbl_80500F84
/* 80500DDC  28 1C 08 35 */	cmplwi r28, 0x835
/* 80500DE0  41 82 01 A4 */	beq lbl_80500F84
/* 80500DE4  28 1C 08 3A */	cmplwi r28, 0x83a
/* 80500DE8  41 82 01 9C */	beq lbl_80500F84
/* 80500DEC  28 1C 08 30 */	cmplwi r28, 0x830
/* 80500DF0  41 82 01 94 */	beq lbl_80500F84
/* 80500DF4  28 1C 08 35 */	cmplwi r28, 0x835
/* 80500DF8  41 82 01 8C */	beq lbl_80500F84
/* 80500DFC  28 1C 08 3A */	cmplwi r28, 0x83a
/* 80500E00  41 82 01 84 */	beq lbl_80500F84
/* 80500E04  28 1C 08 52 */	cmplwi r28, 0x852
/* 80500E08  41 82 01 7C */	beq lbl_80500F84
/* 80500E0C  28 1C 08 57 */	cmplwi r28, 0x857
/* 80500E10  41 82 01 74 */	beq lbl_80500F84
/* 80500E14  28 1C 08 60 */	cmplwi r28, 0x860
/* 80500E18  41 82 01 6C */	beq lbl_80500F84
/* 80500E1C  28 1C 08 66 */	cmplwi r28, 0x866
/* 80500E20  41 82 01 64 */	beq lbl_80500F84
/* 80500E24  28 1C 08 04 */	cmplwi r28, 0x804
/* 80500E28  41 82 01 5C */	beq lbl_80500F84
/* 80500E2C  28 1C 08 0C */	cmplwi r28, 0x80c
/* 80500E30  41 82 01 54 */	beq lbl_80500F84
/* 80500E34  28 1C 08 14 */	cmplwi r28, 0x814
/* 80500E38  41 82 01 4C */	beq lbl_80500F84
/* 80500E3C  28 1C 08 1C */	cmplwi r28, 0x81c
/* 80500E40  41 82 01 44 */	beq lbl_80500F84
/* 80500E44  28 1C 08 24 */	cmplwi r28, 0x824
/* 80500E48  41 82 01 3C */	beq lbl_80500F84
/* 80500E4C  28 1C 08 2C */	cmplwi r28, 0x82c
/* 80500E50  41 82 01 34 */	beq lbl_80500F84
/* 80500E54  28 1C 08 31 */	cmplwi r28, 0x831
/* 80500E58  41 82 01 2C */	beq lbl_80500F84
/* 80500E5C  28 1C 08 36 */	cmplwi r28, 0x836
/* 80500E60  41 82 01 24 */	beq lbl_80500F84
/* 80500E64  28 1C 08 3B */	cmplwi r28, 0x83b
/* 80500E68  41 82 01 1C */	beq lbl_80500F84
/* 80500E6C  28 1C 08 53 */	cmplwi r28, 0x853
/* 80500E70  41 82 01 14 */	beq lbl_80500F84
/* 80500E74  28 1C 08 5B */	cmplwi r28, 0x85b
/* 80500E78  41 82 01 0C */	beq lbl_80500F84
/* 80500E7C  28 1C 08 61 */	cmplwi r28, 0x861
/* 80500E80  41 82 01 04 */	beq lbl_80500F84
/* 80500E84  28 1C 08 68 */	cmplwi r28, 0x868
/* 80500E88  41 82 00 FC */	beq lbl_80500F84
/* 80500E8C  28 1C 08 67 */	cmplwi r28, 0x867
/* 80500E90  41 82 00 F4 */	beq lbl_80500F84
/* 80500E94  28 1C 08 09 */	cmplwi r28, 0x809
/* 80500E98  41 82 00 EC */	beq lbl_80500F84
/* 80500E9C  28 1C 08 11 */	cmplwi r28, 0x811
/* 80500EA0  41 82 00 E4 */	beq lbl_80500F84
/* 80500EA4  28 1C 08 19 */	cmplwi r28, 0x819
/* 80500EA8  41 82 00 DC */	beq lbl_80500F84
/* 80500EAC  28 1C 08 21 */	cmplwi r28, 0x821
/* 80500EB0  41 82 00 D4 */	beq lbl_80500F84
/* 80500EB4  28 1C 08 29 */	cmplwi r28, 0x829
/* 80500EB8  41 82 00 CC */	beq lbl_80500F84
/* 80500EBC  28 1C 08 58 */	cmplwi r28, 0x858
/* 80500EC0  41 82 00 C4 */	beq lbl_80500F84
/* 80500EC4  28 1C 08 0A */	cmplwi r28, 0x80a
/* 80500EC8  41 82 00 BC */	beq lbl_80500F84
/* 80500ECC  28 1C 08 12 */	cmplwi r28, 0x812
/* 80500ED0  41 82 00 B4 */	beq lbl_80500F84
/* 80500ED4  28 1C 08 1A */	cmplwi r28, 0x81a
/* 80500ED8  41 82 00 AC */	beq lbl_80500F84
/* 80500EDC  28 1C 08 22 */	cmplwi r28, 0x822
/* 80500EE0  41 82 00 A4 */	beq lbl_80500F84
/* 80500EE4  28 1C 08 2A */	cmplwi r28, 0x82a
/* 80500EE8  41 82 00 9C */	beq lbl_80500F84
/* 80500EEC  28 1C 08 59 */	cmplwi r28, 0x859
/* 80500EF0  41 82 00 94 */	beq lbl_80500F84
/* 80500EF4  28 1C 08 0B */	cmplwi r28, 0x80b
/* 80500EF8  41 82 00 8C */	beq lbl_80500F84
/* 80500EFC  28 1C 08 13 */	cmplwi r28, 0x813
/* 80500F00  41 82 00 84 */	beq lbl_80500F84
/* 80500F04  28 1C 08 1B */	cmplwi r28, 0x81b
/* 80500F08  41 82 00 7C */	beq lbl_80500F84
/* 80500F0C  28 1C 08 23 */	cmplwi r28, 0x823
/* 80500F10  41 82 00 74 */	beq lbl_80500F84
/* 80500F14  28 1C 08 2B */	cmplwi r28, 0x82b
/* 80500F18  41 82 00 6C */	beq lbl_80500F84
/* 80500F1C  28 1C 08 5A */	cmplwi r28, 0x85a
/* 80500F20  41 82 00 64 */	beq lbl_80500F84
/* 80500F24  28 1C 00 5E */	cmplwi r28, 0x5e
/* 80500F28  41 82 00 5C */	beq lbl_80500F84
/* 80500F2C  28 1C 00 5F */	cmplwi r28, 0x5f
/* 80500F30  41 82 00 54 */	beq lbl_80500F84
/* 80500F34  28 1C 00 60 */	cmplwi r28, 0x60
/* 80500F38  41 82 00 4C */	beq lbl_80500F84
/* 80500F3C  28 1C 00 61 */	cmplwi r28, 0x61
/* 80500F40  41 82 00 44 */	beq lbl_80500F84
/* 80500F44  28 1C 00 69 */	cmplwi r28, 0x69
/* 80500F48  41 82 00 3C */	beq lbl_80500F84
/* 80500F4C  28 1C 00 78 */	cmplwi r28, 0x78
/* 80500F50  41 82 00 34 */	beq lbl_80500F84
/* 80500F54  28 1C 00 79 */	cmplwi r28, 0x79
/* 80500F58  41 82 00 2C */	beq lbl_80500F84
/* 80500F5C  28 1C 00 7A */	cmplwi r28, 0x7a
/* 80500F60  41 82 00 24 */	beq lbl_80500F84
/* 80500F64  28 1C 00 82 */	cmplwi r28, 0x82
/* 80500F68  41 82 00 1C */	beq lbl_80500F84
/* 80500F6C  28 1C 00 7F */	cmplwi r28, 0x7f
/* 80500F70  41 82 00 14 */	beq lbl_80500F84
/* 80500F74  28 1C 00 80 */	cmplwi r28, 0x80
/* 80500F78  41 82 00 0C */	beq lbl_80500F84
/* 80500F7C  28 1C 00 81 */	cmplwi r28, 0x81
/* 80500F80  40 82 00 08 */	bne lbl_80500F88
lbl_80500F84:
/* 80500F84  38 00 00 01 */	li r0, 1
lbl_80500F88:
/* 80500F88  2C 00 00 00 */	cmpwi r0, 0
/* 80500F8C  41 82 00 B0 */	beq lbl_8050103C
/* 80500F90  2C 1E 00 00 */	cmpwi r30, 0
/* 80500F94  41 80 00 A8 */	blt lbl_8050103C
/* 80500F98  2C 1D 00 00 */	cmpwi r29, 0
/* 80500F9C  41 80 00 A0 */	blt lbl_8050103C
/* 80500FA0  7F 43 D3 78 */	mr r3, r26
/* 80500FA4  7F 64 DB 78 */	mr r4, r27
/* 80500FA8  7F 85 E3 78 */	mr r5, r28
/* 80500FAC  7F C6 F3 78 */	mr r6, r30
/* 80500FB0  7F A7 EB 78 */	mr r7, r29
/* 80500FB4  39 00 00 00 */	li r8, 0
/* 80500FB8  4B FD AF DD */	bl Player_actor_Set_shake_tree_table
/* 80500FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80500FC0  41 82 00 7C */	beq lbl_8050103C
/* 80500FC4  7F E3 FB 78 */	mr r3, r31
/* 80500FC8  4B FD E8 91 */	bl Player_actor_sound_tree_yurasu
/* 80500FCC  4B FD 3E E5 */	bl Player_actor_set_viblation_Shake_tree
/* 80500FD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80500FD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80500FD8  3C 63 00 02 */	addis r3, r3, 2
/* 80500FDC  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 80500FE0  28 03 00 00 */	cmplwi r3, 0
/* 80500FE4  41 82 00 58 */	beq lbl_8050103C
/* 80500FE8  81 83 00 38 */	lwz r12, 0x38(r3)
/* 80500FEC  28 0C 00 00 */	cmplwi r12, 0
/* 80500FF0  41 82 00 4C */	beq lbl_8050103C
/* 80500FF4  28 1C 00 5E */	cmplwi r28, 0x5e
/* 80500FF8  41 82 00 30 */	beq lbl_80501028
/* 80500FFC  28 1C 00 7A */	cmplwi r28, 0x7a
/* 80501000  41 82 00 28 */	beq lbl_80501028
/* 80501004  28 1C 00 81 */	cmplwi r28, 0x81
/* 80501008  41 82 00 20 */	beq lbl_80501028
/* 8050100C  7F 83 E3 78 */	mr r3, r28
/* 80501010  7F C4 F3 78 */	mr r4, r30
/* 80501014  7F A5 EB 78 */	mr r5, r29
/* 80501018  38 C1 00 08 */	addi r6, r1, 8
/* 8050101C  7D 89 03 A6 */	mtctr r12
/* 80501020  4E 80 04 21 */	bctrl 
/* 80501024  48 00 00 18 */	b lbl_8050103C
lbl_80501028:
/* 80501028  4B ED D1 21 */	bl mPlib_able_birth_bee
/* 8050102C  2C 03 00 00 */	cmpwi r3, 0
/* 80501030  41 82 00 0C */	beq lbl_8050103C
/* 80501034  38 00 00 05 */	li r0, 5
/* 80501038  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_8050103C:
/* 8050103C  39 61 00 30 */	addi r11, r1, 0x30
/* 80501040  4B B9 9E D5 */	bl func_8009AF14
/* 80501044  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80501048  7C 08 03 A6 */	mtlr r0
/* 8050104C  38 21 00 30 */	addi r1, r1, 0x30
/* 80501050  4E 80 00 20 */	blr 
