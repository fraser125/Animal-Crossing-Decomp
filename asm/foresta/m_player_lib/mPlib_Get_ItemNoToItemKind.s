lbl_803D9AD4:
/* 803D9AD4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803D9AD8  38 03 DE 00 */	addi r0, r3, -8704
/* 803D9ADC  28 00 00 5B */	cmplwi r0, 0x5b
/* 803D9AE0  41 81 02 94 */	bgt lbl_803D9D74
/* 803D9AE4  3C 60 80 66 */	lis r3, lit_836@ha /* 0x8065BC20@ha */
/* 803D9AE8  54 00 10 3A */	slwi r0, r0, 2
/* 803D9AEC  38 63 BC 20 */	addi r3, r3, lit_836@l /* 0x8065BC20@l */
/* 803D9AF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 803D9AF4  7C 09 03 A6 */	mtctr r0
/* 803D9AF8  4E 80 04 20 */	bctr 
lbl_803D9AFC:
/* 803D9AFC  38 60 00 09 */	li r3, 9
/* 803D9B00  4E 80 00 20 */	blr 
lbl_803D9B04:
/* 803D9B04  38 60 00 0A */	li r3, 0xa
/* 803D9B08  4E 80 00 20 */	blr 
lbl_803D9B0C:
/* 803D9B0C  38 60 00 00 */	li r3, 0
/* 803D9B10  4E 80 00 20 */	blr 
lbl_803D9B14:
/* 803D9B14  38 60 00 01 */	li r3, 1
/* 803D9B18  4E 80 00 20 */	blr 
lbl_803D9B1C:
/* 803D9B1C  38 60 00 02 */	li r3, 2
/* 803D9B20  4E 80 00 20 */	blr 
lbl_803D9B24:
/* 803D9B24  38 60 00 03 */	li r3, 3
/* 803D9B28  4E 80 00 20 */	blr 
lbl_803D9B2C:
/* 803D9B2C  38 60 00 04 */	li r3, 4
/* 803D9B30  4E 80 00 20 */	blr 
lbl_803D9B34:
/* 803D9B34  38 60 00 05 */	li r3, 5
/* 803D9B38  4E 80 00 20 */	blr 
lbl_803D9B3C:
/* 803D9B3C  38 60 00 06 */	li r3, 6
/* 803D9B40  4E 80 00 20 */	blr 
lbl_803D9B44:
/* 803D9B44  38 60 00 07 */	li r3, 7
/* 803D9B48  4E 80 00 20 */	blr 
lbl_803D9B4C:
/* 803D9B4C  38 60 00 08 */	li r3, 8
/* 803D9B50  4E 80 00 20 */	blr 
lbl_803D9B54:
/* 803D9B54  38 60 00 0B */	li r3, 0xb
/* 803D9B58  4E 80 00 20 */	blr 
lbl_803D9B5C:
/* 803D9B5C  38 60 00 0C */	li r3, 0xc
/* 803D9B60  4E 80 00 20 */	blr 
lbl_803D9B64:
/* 803D9B64  38 60 00 0D */	li r3, 0xd
/* 803D9B68  4E 80 00 20 */	blr 
lbl_803D9B6C:
/* 803D9B6C  38 60 00 0E */	li r3, 0xe
/* 803D9B70  4E 80 00 20 */	blr 
lbl_803D9B74:
/* 803D9B74  38 60 00 0F */	li r3, 0xf
/* 803D9B78  4E 80 00 20 */	blr 
lbl_803D9B7C:
/* 803D9B7C  38 60 00 10 */	li r3, 0x10
/* 803D9B80  4E 80 00 20 */	blr 
lbl_803D9B84:
/* 803D9B84  38 60 00 11 */	li r3, 0x11
/* 803D9B88  4E 80 00 20 */	blr 
lbl_803D9B8C:
/* 803D9B8C  38 60 00 12 */	li r3, 0x12
/* 803D9B90  4E 80 00 20 */	blr 
lbl_803D9B94:
/* 803D9B94  38 60 00 13 */	li r3, 0x13
/* 803D9B98  4E 80 00 20 */	blr 
lbl_803D9B9C:
/* 803D9B9C  38 60 00 14 */	li r3, 0x14
/* 803D9BA0  4E 80 00 20 */	blr 
lbl_803D9BA4:
/* 803D9BA4  38 60 00 15 */	li r3, 0x15
/* 803D9BA8  4E 80 00 20 */	blr 
lbl_803D9BAC:
/* 803D9BAC  38 60 00 16 */	li r3, 0x16
/* 803D9BB0  4E 80 00 20 */	blr 
lbl_803D9BB4:
/* 803D9BB4  38 60 00 17 */	li r3, 0x17
/* 803D9BB8  4E 80 00 20 */	blr 
lbl_803D9BBC:
/* 803D9BBC  38 60 00 18 */	li r3, 0x18
/* 803D9BC0  4E 80 00 20 */	blr 
lbl_803D9BC4:
/* 803D9BC4  38 60 00 19 */	li r3, 0x19
/* 803D9BC8  4E 80 00 20 */	blr 
lbl_803D9BCC:
/* 803D9BCC  38 60 00 1A */	li r3, 0x1a
/* 803D9BD0  4E 80 00 20 */	blr 
lbl_803D9BD4:
/* 803D9BD4  38 60 00 1B */	li r3, 0x1b
/* 803D9BD8  4E 80 00 20 */	blr 
lbl_803D9BDC:
/* 803D9BDC  38 60 00 1C */	li r3, 0x1c
/* 803D9BE0  4E 80 00 20 */	blr 
lbl_803D9BE4:
/* 803D9BE4  38 60 00 1D */	li r3, 0x1d
/* 803D9BE8  4E 80 00 20 */	blr 
lbl_803D9BEC:
/* 803D9BEC  38 60 00 1E */	li r3, 0x1e
/* 803D9BF0  4E 80 00 20 */	blr 
lbl_803D9BF4:
/* 803D9BF4  38 60 00 1F */	li r3, 0x1f
/* 803D9BF8  4E 80 00 20 */	blr 
lbl_803D9BFC:
/* 803D9BFC  38 60 00 20 */	li r3, 0x20
/* 803D9C00  4E 80 00 20 */	blr 
lbl_803D9C04:
/* 803D9C04  38 60 00 21 */	li r3, 0x21
/* 803D9C08  4E 80 00 20 */	blr 
lbl_803D9C0C:
/* 803D9C0C  38 60 00 22 */	li r3, 0x22
/* 803D9C10  4E 80 00 20 */	blr 
lbl_803D9C14:
/* 803D9C14  38 60 00 23 */	li r3, 0x23
/* 803D9C18  4E 80 00 20 */	blr 
lbl_803D9C1C:
/* 803D9C1C  38 60 00 24 */	li r3, 0x24
/* 803D9C20  4E 80 00 20 */	blr 
lbl_803D9C24:
/* 803D9C24  38 60 00 25 */	li r3, 0x25
/* 803D9C28  4E 80 00 20 */	blr 
lbl_803D9C2C:
/* 803D9C2C  38 60 00 26 */	li r3, 0x26
/* 803D9C30  4E 80 00 20 */	blr 
lbl_803D9C34:
/* 803D9C34  38 60 00 27 */	li r3, 0x27
/* 803D9C38  4E 80 00 20 */	blr 
lbl_803D9C3C:
/* 803D9C3C  38 60 00 28 */	li r3, 0x28
/* 803D9C40  4E 80 00 20 */	blr 
lbl_803D9C44:
/* 803D9C44  38 60 00 29 */	li r3, 0x29
/* 803D9C48  4E 80 00 20 */	blr 
lbl_803D9C4C:
/* 803D9C4C  38 60 00 2A */	li r3, 0x2a
/* 803D9C50  4E 80 00 20 */	blr 
lbl_803D9C54:
/* 803D9C54  38 60 00 2B */	li r3, 0x2b
/* 803D9C58  4E 80 00 20 */	blr 
lbl_803D9C5C:
/* 803D9C5C  38 60 00 2C */	li r3, 0x2c
/* 803D9C60  4E 80 00 20 */	blr 
lbl_803D9C64:
/* 803D9C64  38 60 00 2D */	li r3, 0x2d
/* 803D9C68  4E 80 00 20 */	blr 
lbl_803D9C6C:
/* 803D9C6C  38 60 00 2E */	li r3, 0x2e
/* 803D9C70  4E 80 00 20 */	blr 
lbl_803D9C74:
/* 803D9C74  38 60 00 2F */	li r3, 0x2f
/* 803D9C78  4E 80 00 20 */	blr 
lbl_803D9C7C:
/* 803D9C7C  38 60 00 30 */	li r3, 0x30
/* 803D9C80  4E 80 00 20 */	blr 
lbl_803D9C84:
/* 803D9C84  38 60 00 31 */	li r3, 0x31
/* 803D9C88  4E 80 00 20 */	blr 
lbl_803D9C8C:
/* 803D9C8C  38 60 00 32 */	li r3, 0x32
/* 803D9C90  4E 80 00 20 */	blr 
lbl_803D9C94:
/* 803D9C94  38 60 00 33 */	li r3, 0x33
/* 803D9C98  4E 80 00 20 */	blr 
lbl_803D9C9C:
/* 803D9C9C  38 60 00 34 */	li r3, 0x34
/* 803D9CA0  4E 80 00 20 */	blr 
lbl_803D9CA4:
/* 803D9CA4  38 60 00 35 */	li r3, 0x35
/* 803D9CA8  4E 80 00 20 */	blr 
lbl_803D9CAC:
/* 803D9CAC  38 60 00 36 */	li r3, 0x36
/* 803D9CB0  4E 80 00 20 */	blr 
lbl_803D9CB4:
/* 803D9CB4  38 60 00 37 */	li r3, 0x37
/* 803D9CB8  4E 80 00 20 */	blr 
lbl_803D9CBC:
/* 803D9CBC  38 60 00 38 */	li r3, 0x38
/* 803D9CC0  4E 80 00 20 */	blr 
lbl_803D9CC4:
/* 803D9CC4  38 60 00 39 */	li r3, 0x39
/* 803D9CC8  4E 80 00 20 */	blr 
lbl_803D9CCC:
/* 803D9CCC  38 60 00 3A */	li r3, 0x3a
/* 803D9CD0  4E 80 00 20 */	blr 
lbl_803D9CD4:
/* 803D9CD4  38 60 00 3B */	li r3, 0x3b
/* 803D9CD8  4E 80 00 20 */	blr 
lbl_803D9CDC:
/* 803D9CDC  38 60 00 3C */	li r3, 0x3c
/* 803D9CE0  4E 80 00 20 */	blr 
lbl_803D9CE4:
/* 803D9CE4  38 60 00 3D */	li r3, 0x3d
/* 803D9CE8  4E 80 00 20 */	blr 
lbl_803D9CEC:
/* 803D9CEC  38 60 00 3E */	li r3, 0x3e
/* 803D9CF0  4E 80 00 20 */	blr 
lbl_803D9CF4:
/* 803D9CF4  38 60 00 3F */	li r3, 0x3f
/* 803D9CF8  4E 80 00 20 */	blr 
lbl_803D9CFC:
/* 803D9CFC  38 60 00 40 */	li r3, 0x40
/* 803D9D00  4E 80 00 20 */	blr 
lbl_803D9D04:
/* 803D9D04  38 60 00 41 */	li r3, 0x41
/* 803D9D08  4E 80 00 20 */	blr 
lbl_803D9D0C:
/* 803D9D0C  38 60 00 42 */	li r3, 0x42
/* 803D9D10  4E 80 00 20 */	blr 
lbl_803D9D14:
/* 803D9D14  38 60 00 43 */	li r3, 0x43
/* 803D9D18  4E 80 00 20 */	blr 
lbl_803D9D1C:
/* 803D9D1C  38 60 00 44 */	li r3, 0x44
/* 803D9D20  4E 80 00 20 */	blr 
lbl_803D9D24:
/* 803D9D24  38 60 00 45 */	li r3, 0x45
/* 803D9D28  4E 80 00 20 */	blr 
lbl_803D9D2C:
/* 803D9D2C  38 60 00 46 */	li r3, 0x46
/* 803D9D30  4E 80 00 20 */	blr 
lbl_803D9D34:
/* 803D9D34  38 60 00 47 */	li r3, 0x47
/* 803D9D38  4E 80 00 20 */	blr 
lbl_803D9D3C:
/* 803D9D3C  38 60 00 48 */	li r3, 0x48
/* 803D9D40  4E 80 00 20 */	blr 
lbl_803D9D44:
/* 803D9D44  38 60 00 49 */	li r3, 0x49
/* 803D9D48  4E 80 00 20 */	blr 
lbl_803D9D4C:
/* 803D9D4C  38 60 00 4A */	li r3, 0x4a
/* 803D9D50  4E 80 00 20 */	blr 
lbl_803D9D54:
/* 803D9D54  38 60 00 4B */	li r3, 0x4b
/* 803D9D58  4E 80 00 20 */	blr 
lbl_803D9D5C:
/* 803D9D5C  38 60 00 4C */	li r3, 0x4c
/* 803D9D60  4E 80 00 20 */	blr 
lbl_803D9D64:
/* 803D9D64  38 60 00 4D */	li r3, 0x4d
/* 803D9D68  4E 80 00 20 */	blr 
lbl_803D9D6C:
/* 803D9D6C  38 60 00 4E */	li r3, 0x4e
/* 803D9D70  4E 80 00 20 */	blr 
lbl_803D9D74:
/* 803D9D74  38 60 FF FF */	li r3, -1
/* 803D9D78  4E 80 00 20 */	blr 
