lbl_804F8C58:
/* 804F8C58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F8C5C  7C 08 02 A6 */	mflr r0
/* 804F8C60  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F8C64  39 61 00 30 */	addi r11, r1, 0x30
/* 804F8C68  4B BA 22 69 */	bl func_8009AED0
/* 804F8C6C  3C 80 80 65 */	lis r4, lit_6693@ha /* 0x806480E0@ha */
/* 804F8C70  7C 7C 1B 78 */	mr r28, r3
/* 804F8C74  C0 24 80 E0 */	lfs f1, lit_6693@l(r4)  /* 0x806480E0@l */
/* 804F8C78  38 7C 01 74 */	addi r3, r28, 0x174
/* 804F8C7C  4B FD E9 85 */	bl Player_actor_Check_AnimationFrame
/* 804F8C80  2C 03 00 00 */	cmpwi r3, 0
/* 804F8C84  41 82 03 D4 */	beq lbl_804F9058
/* 804F8C88  3B FC 0D 18 */	addi r31, r28, 0xd18
/* 804F8C8C  83 DC 0D 28 */	lwz r30, 0xd28(r28)
/* 804F8C90  A3 BC 0D 24 */	lhz r29, 0xd24(r28)
/* 804F8C94  28 1E 00 00 */	cmplwi r30, 0
/* 804F8C98  40 82 00 40 */	bne lbl_804F8CD8
/* 804F8C9C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804F8CA0  38 61 00 08 */	addi r3, r1, 8
/* 804F8CA4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804F8CA8  38 80 00 00 */	li r4, 0
/* 804F8CAC  90 A1 00 08 */	stw r5, 8(r1)
/* 804F8CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F8CB4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804F8CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F8CBC  4B E9 03 F1 */	bl mCoBG_Wpos2Attribute
/* 804F8CC0  28 03 00 09 */	cmplwi r3, 9
/* 804F8CC4  40 82 00 38 */	bne lbl_804F8CFC
/* 804F8CC8  7F 83 E3 78 */	mr r3, r28
/* 804F8CCC  4B FE 6A F9 */	bl Player_actor_sound_scoop_shigemi
/* 804F8CD0  4B FD C1 69 */	bl Player_actor_set_viblation_Reflect_scoop_soft
/* 804F8CD4  48 00 03 84 */	b lbl_804F9058
lbl_804F8CD8:
/* 804F8CD8  4B FD C1 61 */	bl Player_actor_set_viblation_Reflect_scoop_soft
/* 804F8CDC  A8 1E 00 00 */	lha r0, 0(r30)
/* 804F8CE0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804F8CE4  41 82 03 74 */	beq lbl_804F9058
/* 804F8CE8  48 00 00 08 */	b lbl_804F8CF0
/* 804F8CEC  48 00 03 6C */	b lbl_804F9058
lbl_804F8CF0:
/* 804F8CF0  7F 83 E3 78 */	mr r3, r28
/* 804F8CF4  4B FE 6E 19 */	bl Player_actor_sound_scoop_item_hit
/* 804F8CF8  48 00 03 60 */	b lbl_804F9058
lbl_804F8CFC:
/* 804F8CFC  28 1D 08 01 */	cmplwi r29, 0x801
/* 804F8D00  38 00 00 00 */	li r0, 0
/* 804F8D04  41 82 02 DC */	beq lbl_804F8FE0
/* 804F8D08  28 1D 08 06 */	cmplwi r29, 0x806
/* 804F8D0C  41 82 02 D4 */	beq lbl_804F8FE0
/* 804F8D10  28 1D 08 0E */	cmplwi r29, 0x80e
/* 804F8D14  41 82 02 CC */	beq lbl_804F8FE0
/* 804F8D18  28 1D 08 16 */	cmplwi r29, 0x816
/* 804F8D1C  41 82 02 C4 */	beq lbl_804F8FE0
/* 804F8D20  28 1D 08 1E */	cmplwi r29, 0x81e
/* 804F8D24  41 82 02 BC */	beq lbl_804F8FE0
/* 804F8D28  28 1D 08 26 */	cmplwi r29, 0x826
/* 804F8D2C  41 82 02 B4 */	beq lbl_804F8FE0
/* 804F8D30  28 1D 08 2E */	cmplwi r29, 0x82e
/* 804F8D34  41 82 02 AC */	beq lbl_804F8FE0
/* 804F8D38  28 1D 08 33 */	cmplwi r29, 0x833
/* 804F8D3C  41 82 02 A4 */	beq lbl_804F8FE0
/* 804F8D40  28 1D 08 38 */	cmplwi r29, 0x838
/* 804F8D44  41 82 02 9C */	beq lbl_804F8FE0
/* 804F8D48  28 1D 08 2E */	cmplwi r29, 0x82e
/* 804F8D4C  41 82 02 94 */	beq lbl_804F8FE0
/* 804F8D50  28 1D 08 33 */	cmplwi r29, 0x833
/* 804F8D54  41 82 02 8C */	beq lbl_804F8FE0
/* 804F8D58  28 1D 08 38 */	cmplwi r29, 0x838
/* 804F8D5C  41 82 02 84 */	beq lbl_804F8FE0
/* 804F8D60  28 1D 08 50 */	cmplwi r29, 0x850
/* 804F8D64  41 82 02 7C */	beq lbl_804F8FE0
/* 804F8D68  28 1D 08 55 */	cmplwi r29, 0x855
/* 804F8D6C  41 82 02 74 */	beq lbl_804F8FE0
/* 804F8D70  28 1D 08 5E */	cmplwi r29, 0x85e
/* 804F8D74  41 82 02 6C */	beq lbl_804F8FE0
/* 804F8D78  28 1D 08 64 */	cmplwi r29, 0x864
/* 804F8D7C  41 82 02 64 */	beq lbl_804F8FE0
/* 804F8D80  28 1D 08 02 */	cmplwi r29, 0x802
/* 804F8D84  41 82 02 5C */	beq lbl_804F8FE0
/* 804F8D88  28 1D 08 07 */	cmplwi r29, 0x807
/* 804F8D8C  41 82 02 54 */	beq lbl_804F8FE0
/* 804F8D90  28 1D 08 0F */	cmplwi r29, 0x80f
/* 804F8D94  41 82 02 4C */	beq lbl_804F8FE0
/* 804F8D98  28 1D 08 17 */	cmplwi r29, 0x817
/* 804F8D9C  41 82 02 44 */	beq lbl_804F8FE0
/* 804F8DA0  28 1D 08 1F */	cmplwi r29, 0x81f
/* 804F8DA4  41 82 02 3C */	beq lbl_804F8FE0
/* 804F8DA8  28 1D 08 27 */	cmplwi r29, 0x827
/* 804F8DAC  41 82 02 34 */	beq lbl_804F8FE0
/* 804F8DB0  28 1D 08 2F */	cmplwi r29, 0x82f
/* 804F8DB4  41 82 02 2C */	beq lbl_804F8FE0
/* 804F8DB8  28 1D 08 34 */	cmplwi r29, 0x834
/* 804F8DBC  41 82 02 24 */	beq lbl_804F8FE0
/* 804F8DC0  28 1D 08 39 */	cmplwi r29, 0x839
/* 804F8DC4  41 82 02 1C */	beq lbl_804F8FE0
/* 804F8DC8  28 1D 08 2F */	cmplwi r29, 0x82f
/* 804F8DCC  41 82 02 14 */	beq lbl_804F8FE0
/* 804F8DD0  28 1D 08 34 */	cmplwi r29, 0x834
/* 804F8DD4  41 82 02 0C */	beq lbl_804F8FE0
/* 804F8DD8  28 1D 08 39 */	cmplwi r29, 0x839
/* 804F8DDC  41 82 02 04 */	beq lbl_804F8FE0
/* 804F8DE0  28 1D 08 51 */	cmplwi r29, 0x851
/* 804F8DE4  41 82 01 FC */	beq lbl_804F8FE0
/* 804F8DE8  28 1D 08 56 */	cmplwi r29, 0x856
/* 804F8DEC  41 82 01 F4 */	beq lbl_804F8FE0
/* 804F8DF0  28 1D 08 5F */	cmplwi r29, 0x85f
/* 804F8DF4  41 82 01 EC */	beq lbl_804F8FE0
/* 804F8DF8  28 1D 08 65 */	cmplwi r29, 0x865
/* 804F8DFC  41 82 01 E4 */	beq lbl_804F8FE0
/* 804F8E00  28 1D 08 03 */	cmplwi r29, 0x803
/* 804F8E04  41 82 01 DC */	beq lbl_804F8FE0
/* 804F8E08  28 1D 08 08 */	cmplwi r29, 0x808
/* 804F8E0C  41 82 01 D4 */	beq lbl_804F8FE0
/* 804F8E10  28 1D 08 10 */	cmplwi r29, 0x810
/* 804F8E14  41 82 01 CC */	beq lbl_804F8FE0
/* 804F8E18  28 1D 08 18 */	cmplwi r29, 0x818
/* 804F8E1C  41 82 01 C4 */	beq lbl_804F8FE0
/* 804F8E20  28 1D 08 20 */	cmplwi r29, 0x820
/* 804F8E24  41 82 01 BC */	beq lbl_804F8FE0
/* 804F8E28  28 1D 08 28 */	cmplwi r29, 0x828
/* 804F8E2C  41 82 01 B4 */	beq lbl_804F8FE0
/* 804F8E30  28 1D 08 30 */	cmplwi r29, 0x830
/* 804F8E34  41 82 01 AC */	beq lbl_804F8FE0
/* 804F8E38  28 1D 08 35 */	cmplwi r29, 0x835
/* 804F8E3C  41 82 01 A4 */	beq lbl_804F8FE0
/* 804F8E40  28 1D 08 3A */	cmplwi r29, 0x83a
/* 804F8E44  41 82 01 9C */	beq lbl_804F8FE0
/* 804F8E48  28 1D 08 30 */	cmplwi r29, 0x830
/* 804F8E4C  41 82 01 94 */	beq lbl_804F8FE0
/* 804F8E50  28 1D 08 35 */	cmplwi r29, 0x835
/* 804F8E54  41 82 01 8C */	beq lbl_804F8FE0
/* 804F8E58  28 1D 08 3A */	cmplwi r29, 0x83a
/* 804F8E5C  41 82 01 84 */	beq lbl_804F8FE0
/* 804F8E60  28 1D 08 52 */	cmplwi r29, 0x852
/* 804F8E64  41 82 01 7C */	beq lbl_804F8FE0
/* 804F8E68  28 1D 08 57 */	cmplwi r29, 0x857
/* 804F8E6C  41 82 01 74 */	beq lbl_804F8FE0
/* 804F8E70  28 1D 08 60 */	cmplwi r29, 0x860
/* 804F8E74  41 82 01 6C */	beq lbl_804F8FE0
/* 804F8E78  28 1D 08 66 */	cmplwi r29, 0x866
/* 804F8E7C  41 82 01 64 */	beq lbl_804F8FE0
/* 804F8E80  28 1D 08 04 */	cmplwi r29, 0x804
/* 804F8E84  41 82 01 5C */	beq lbl_804F8FE0
/* 804F8E88  28 1D 08 0C */	cmplwi r29, 0x80c
/* 804F8E8C  41 82 01 54 */	beq lbl_804F8FE0
/* 804F8E90  28 1D 08 14 */	cmplwi r29, 0x814
/* 804F8E94  41 82 01 4C */	beq lbl_804F8FE0
/* 804F8E98  28 1D 08 1C */	cmplwi r29, 0x81c
/* 804F8E9C  41 82 01 44 */	beq lbl_804F8FE0
/* 804F8EA0  28 1D 08 24 */	cmplwi r29, 0x824
/* 804F8EA4  41 82 01 3C */	beq lbl_804F8FE0
/* 804F8EA8  28 1D 08 2C */	cmplwi r29, 0x82c
/* 804F8EAC  41 82 01 34 */	beq lbl_804F8FE0
/* 804F8EB0  28 1D 08 31 */	cmplwi r29, 0x831
/* 804F8EB4  41 82 01 2C */	beq lbl_804F8FE0
/* 804F8EB8  28 1D 08 36 */	cmplwi r29, 0x836
/* 804F8EBC  41 82 01 24 */	beq lbl_804F8FE0
/* 804F8EC0  28 1D 08 3B */	cmplwi r29, 0x83b
/* 804F8EC4  41 82 01 1C */	beq lbl_804F8FE0
/* 804F8EC8  28 1D 08 53 */	cmplwi r29, 0x853
/* 804F8ECC  41 82 01 14 */	beq lbl_804F8FE0
/* 804F8ED0  28 1D 08 5B */	cmplwi r29, 0x85b
/* 804F8ED4  41 82 01 0C */	beq lbl_804F8FE0
/* 804F8ED8  28 1D 08 61 */	cmplwi r29, 0x861
/* 804F8EDC  41 82 01 04 */	beq lbl_804F8FE0
/* 804F8EE0  28 1D 08 68 */	cmplwi r29, 0x868
/* 804F8EE4  41 82 00 FC */	beq lbl_804F8FE0
/* 804F8EE8  28 1D 08 67 */	cmplwi r29, 0x867
/* 804F8EEC  41 82 00 F4 */	beq lbl_804F8FE0
/* 804F8EF0  28 1D 08 09 */	cmplwi r29, 0x809
/* 804F8EF4  41 82 00 EC */	beq lbl_804F8FE0
/* 804F8EF8  28 1D 08 11 */	cmplwi r29, 0x811
/* 804F8EFC  41 82 00 E4 */	beq lbl_804F8FE0
/* 804F8F00  28 1D 08 19 */	cmplwi r29, 0x819
/* 804F8F04  41 82 00 DC */	beq lbl_804F8FE0
/* 804F8F08  28 1D 08 21 */	cmplwi r29, 0x821
/* 804F8F0C  41 82 00 D4 */	beq lbl_804F8FE0
/* 804F8F10  28 1D 08 29 */	cmplwi r29, 0x829
/* 804F8F14  41 82 00 CC */	beq lbl_804F8FE0
/* 804F8F18  28 1D 08 58 */	cmplwi r29, 0x858
/* 804F8F1C  41 82 00 C4 */	beq lbl_804F8FE0
/* 804F8F20  28 1D 08 0A */	cmplwi r29, 0x80a
/* 804F8F24  41 82 00 BC */	beq lbl_804F8FE0
/* 804F8F28  28 1D 08 12 */	cmplwi r29, 0x812
/* 804F8F2C  41 82 00 B4 */	beq lbl_804F8FE0
/* 804F8F30  28 1D 08 1A */	cmplwi r29, 0x81a
/* 804F8F34  41 82 00 AC */	beq lbl_804F8FE0
/* 804F8F38  28 1D 08 22 */	cmplwi r29, 0x822
/* 804F8F3C  41 82 00 A4 */	beq lbl_804F8FE0
/* 804F8F40  28 1D 08 2A */	cmplwi r29, 0x82a
/* 804F8F44  41 82 00 9C */	beq lbl_804F8FE0
/* 804F8F48  28 1D 08 59 */	cmplwi r29, 0x859
/* 804F8F4C  41 82 00 94 */	beq lbl_804F8FE0
/* 804F8F50  28 1D 08 0B */	cmplwi r29, 0x80b
/* 804F8F54  41 82 00 8C */	beq lbl_804F8FE0
/* 804F8F58  28 1D 08 13 */	cmplwi r29, 0x813
/* 804F8F5C  41 82 00 84 */	beq lbl_804F8FE0
/* 804F8F60  28 1D 08 1B */	cmplwi r29, 0x81b
/* 804F8F64  41 82 00 7C */	beq lbl_804F8FE0
/* 804F8F68  28 1D 08 23 */	cmplwi r29, 0x823
/* 804F8F6C  41 82 00 74 */	beq lbl_804F8FE0
/* 804F8F70  28 1D 08 2B */	cmplwi r29, 0x82b
/* 804F8F74  41 82 00 6C */	beq lbl_804F8FE0
/* 804F8F78  28 1D 08 5A */	cmplwi r29, 0x85a
/* 804F8F7C  41 82 00 64 */	beq lbl_804F8FE0
/* 804F8F80  28 1D 00 5E */	cmplwi r29, 0x5e
/* 804F8F84  41 82 00 5C */	beq lbl_804F8FE0
/* 804F8F88  28 1D 00 5F */	cmplwi r29, 0x5f
/* 804F8F8C  41 82 00 54 */	beq lbl_804F8FE0
/* 804F8F90  28 1D 00 60 */	cmplwi r29, 0x60
/* 804F8F94  41 82 00 4C */	beq lbl_804F8FE0
/* 804F8F98  28 1D 00 61 */	cmplwi r29, 0x61
/* 804F8F9C  41 82 00 44 */	beq lbl_804F8FE0
/* 804F8FA0  28 1D 00 69 */	cmplwi r29, 0x69
/* 804F8FA4  41 82 00 3C */	beq lbl_804F8FE0
/* 804F8FA8  28 1D 00 78 */	cmplwi r29, 0x78
/* 804F8FAC  41 82 00 34 */	beq lbl_804F8FE0
/* 804F8FB0  28 1D 00 79 */	cmplwi r29, 0x79
/* 804F8FB4  41 82 00 2C */	beq lbl_804F8FE0
/* 804F8FB8  28 1D 00 7A */	cmplwi r29, 0x7a
/* 804F8FBC  41 82 00 24 */	beq lbl_804F8FE0
/* 804F8FC0  28 1D 00 82 */	cmplwi r29, 0x82
/* 804F8FC4  41 82 00 1C */	beq lbl_804F8FE0
/* 804F8FC8  28 1D 00 7F */	cmplwi r29, 0x7f
/* 804F8FCC  41 82 00 14 */	beq lbl_804F8FE0
/* 804F8FD0  28 1D 00 80 */	cmplwi r29, 0x80
/* 804F8FD4  41 82 00 0C */	beq lbl_804F8FE0
/* 804F8FD8  28 1D 00 81 */	cmplwi r29, 0x81
/* 804F8FDC  40 82 00 08 */	bne lbl_804F8FE4
lbl_804F8FE0:
/* 804F8FE0  38 00 00 01 */	li r0, 1
lbl_804F8FE4:
/* 804F8FE4  2C 00 00 00 */	cmpwi r0, 0
/* 804F8FE8  40 82 00 0C */	bne lbl_804F8FF4
/* 804F8FEC  28 1D F1 02 */	cmplwi r29, 0xf102
/* 804F8FF0  40 82 00 14 */	bne lbl_804F9004
lbl_804F8FF4:
/* 804F8FF4  7F 83 E3 78 */	mr r3, r28
/* 804F8FF8  4B FE 6A F1 */	bl Player_actor_sound_scoop_tree_hit
/* 804F8FFC  4B FD BE 01 */	bl Player_actor_set_viblation_Reflect_scoop_hard
/* 804F9000  48 00 00 58 */	b lbl_804F9058
lbl_804F9004:
/* 804F9004  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 804F9008  2C 00 00 04 */	cmpwi r0, 4
/* 804F900C  40 80 00 20 */	bge lbl_804F902C
/* 804F9010  2C 00 00 01 */	cmpwi r0, 1
/* 804F9014  40 80 00 08 */	bge lbl_804F901C
/* 804F9018  48 00 00 14 */	b lbl_804F902C
lbl_804F901C:
/* 804F901C  7F 83 E3 78 */	mr r3, r28
/* 804F9020  4B FE 6A ED */	bl Player_actor_sound_scoop_item_hit
/* 804F9024  4B FD BE 15 */	bl Player_actor_set_viblation_Reflect_scoop_soft
/* 804F9028  48 00 00 30 */	b lbl_804F9058
lbl_804F902C:
/* 804F902C  7F E3 FB 78 */	mr r3, r31
/* 804F9030  4B E9 85 D1 */	bl mCoBG_WoodSoundEffect
/* 804F9034  2C 03 00 00 */	cmpwi r3, 0
/* 804F9038  41 82 00 14 */	beq lbl_804F904C
/* 804F903C  7F 83 E3 78 */	mr r3, r28
/* 804F9040  4B FE 6A A9 */	bl Player_actor_sound_scoop_tree_hit
/* 804F9044  4B FD BD B9 */	bl Player_actor_set_viblation_Reflect_scoop_hard
/* 804F9048  48 00 00 10 */	b lbl_804F9058
lbl_804F904C:
/* 804F904C  7F 83 E3 78 */	mr r3, r28
/* 804F9050  4B FE 67 51 */	bl Player_actor_sound_scoop_hit
/* 804F9054  4B FD BD A9 */	bl Player_actor_set_viblation_Reflect_scoop_hard
lbl_804F9058:
/* 804F9058  39 61 00 30 */	addi r11, r1, 0x30
/* 804F905C  4B BA 1E C1 */	bl func_8009AF1C
/* 804F9060  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F9064  7C 08 03 A6 */	mtlr r0
/* 804F9068  38 21 00 30 */	addi r1, r1, 0x30
/* 804F906C  4E 80 00 20 */	blr 
