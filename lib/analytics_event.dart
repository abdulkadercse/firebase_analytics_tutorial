import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class AnalyticsEvent extends StatefulWidget {
  const AnalyticsEvent({super.key});

  @override
  State<AnalyticsEvent> createState() => _AnalyticsEventState();
}

class _AnalyticsEventState extends State<AnalyticsEvent> {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  Future<void> logEvent() async {
    await FirebaseAnalytics.instance.logEvent(
      name: "share_image",
      parameters: {
        "image_name": 'name',
        "full_text": 'text',
      },
    );
  }
  Future<void> logBeginCheckout() async {
    await analytics.logBeginCheckout(
        value: 10.0,
        currency: 'USD',
        items: [
          AnalyticsEventItem(
              itemName: 'Socks',
              itemId: 'xjw73ndnw',
              price: 10
          ),
        ],
        coupon: '10PERCENTOFF'
    );
  }
  Future<void> logSelectContent() async {
    await  analytics.logSelectContent(
      contentType: "image",
      itemId: 12.toString(),
    );
  }

  //setCurrentScreenEvent
  Future<void> setCurrentScreenEvent() async {
    analytics.setCurrentScreen(
        screenName: 'Products'
    );
  }
  //logViewItemList
  Future<void> logViewItemList() async {
    await FirebaseAnalytics.instance.logViewItemList(
      itemListId: "L001",
      itemListName: "Related products",
      items: [jeggings, boots, socks],
    );
  }
  //logSelectItem
  Future<void> logSelectItem() async {
    await FirebaseAnalytics.instance.logSelectItem(
      itemListId: "L001",
      itemListName: "Related products",
      items: [jeggings],
    );
  }
  //logViewItem
  Future<void> logViewItem() async {
    await FirebaseAnalytics.instance.logViewItem(
      currency: 'USD',
      value: 9.99,
      items: [jeggings],
    );
  }
  //addToWishlistAndAddToCart
  Future<void> addToWishlistAndAddToCart() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 2,
    );
    //logAddToWishlist
    await analytics.logAddToWishlist(
      currency: 'USD',
      value: 19.98,
      items: [jeggingsWithQuantity],
    );
    //logAddToCart
    await analytics.logAddToCart(
      currency: 'USD',
      value: 19.98,
      items: [jeggingsWithQuantity],
    );
  }
  //view_cart
  Future<void> logViewCart() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 2,
    );
    await analytics.logViewCart(
      currency: 'USD',
      value: 19.98,
      items: [jeggingsWithQuantity],
    );
  }
  //remove_from_cart
  Future<void> logRemoveFromCart() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 1,
    );
    await analytics.logRemoveFromCart(
      currency: 'USD',
      value: 9.99,
      items: [jeggingsWithQuantity],
    );
  }
  //begin_checkout
  Future<void> logBeginCheckout2() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 1,
    );
    await analytics.logBeginCheckout(
      currency: 'USD',
      value: 15.98,
      coupon: "SUMMER_FUN",
      items: [jeggingsWithQuantity],
    );
  }

  //logAddShippingInfo
  Future<void> logAddShippingInfo() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 1,
    );
    await analytics.logAddShippingInfo(
      currency: 'USD',
      value: 15.98,
      coupon: "SUMMER_FUN",
      shippingTier: "Ground",
      items: [jeggingsWithQuantity],
    );
  }

  //logAddPaymentInfo
  Future<void> logAddPaymentInfo() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 1,
    );
    await FirebaseAnalytics.instance.logAddPaymentInfo(
      currency: 'USD',
      value: 15.98,
      coupon: "SUMMER_FUN",
      paymentType: "Visa",
      items: [jeggingsWithQuantity],
    );
  }
  //logPurchase
  Future<void> logPurchase() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 1,
    );
    await FirebaseAnalytics.instance.logPurchase(
      transactionId: "12345",
      affiliation: "Google Store",
      currency: 'USD',
      value: 15.98,
      shipping: 2.00,
      tax: 1.66,
      coupon: "SUMMER_FUN",
      items: [jeggingsWithQuantity],
    );
  }
  //logRefund
  Future<void> logRefund() async {
    final jeggingsWithQuantity = AnalyticsEventItem(
      itemId: jeggings.itemId,
      itemName: jeggings.itemName,
      itemCategory: jeggings.itemCategory,
      itemVariant: jeggings.itemVariant,
      itemBrand: jeggings.itemBrand,
      price: jeggings.price,
      quantity: 1,
    );
    await analytics.logRefund(
      transactionId: "12345",
      affiliation: "Google Store",
      currency: 'USD',
      value: 15.98,
      items: [jeggingsWithQuantity],
    );
  }
  //logViewPromotion
  Future<void> logViewPromotion() async {
    await FirebaseAnalytics.instance.logViewPromotion(
      promotionId: "SUMMER_FUN",
      promotionName: "Summer Sale",
      creativeName: "summer2020_promo.jpg",
      creativeSlot: "featured_app_1",
      locationId: "HERO_BANNER",
    );
  }
  //logSelectPromotion
  Future<void> logSelectPromotion() async {
    await analytics.logSelectPromotion(
      promotionId: "SUMMER_FUN",
      promotionName: "Summer Sale",
      creativeName: "summer2020_promo.jpg",
      creativeSlot: "featured_app_1",
      locationId: "HERO_BANNER",
    );
  }









// A pair of jeggings
  final jeggings = AnalyticsEventItem(
    itemId: "SKU_123",
    itemName: "jeggings",
    itemCategory: "pants",
    itemVariant: "black",
    itemBrand: "Google",
    price: 9.99,
  );

// A pair of boots
  final boots = AnalyticsEventItem(
    itemId: "SKU_456",
    itemName: "boots",
    itemCategory: "shoes",
    itemVariant: "brown",
    itemBrand: "Google",
    price: 24.99,
  );

// A pair of socks
  final socks = AnalyticsEventItem(
    itemId: "SKU_789",
    itemName: "ankle_socks",
    itemCategory: "socks",
    itemVariant: "red",
    itemBrand: "Google",
    price: 5.99,
  );





  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
